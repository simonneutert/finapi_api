=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module FinapiApi
  # Container for interface connection parameters
  class ConnectInterfaceParams
    # Bank connection identifier
    attr_accessor :bank_connection_id

    # Set of login credentials. Must be passed in combination with the 'interface' field.
    attr_accessor :login_credentials

    # Whether to store the secret login fields and/or other authorization data that finAPI might receive from the bank. If the data is stored, then updates can be triggered without the involvement of the users, as long as the credentials remain valid and the bank consent has not expired. Default value is false.<br/><br/>NOTES:<br/> - this field is ignored in case when the user will need to use finAPI's web form. The user will be able to decide whether to store the secrets or not in the web form, depending on the 'storeSecretsAvailableInWebForm' setting (see Client Configuration).
    attr_accessor :store_secrets

    # Challenge response. This field should be set only when the previous attempt of calling the service failed with HTTP code 510, i.e. the bank sent a challenge for the user for an additional authentication. In this case, this field must contain the challenge response when re-triggering the service call. Note that in the context of finAPI's web form flow, finAPI will automatically deal with getting the challenge response from the user via the web form.
    attr_accessor :challenge_response

    # The bank-given ID of the two-step-procedure that should be used for connecting the interface.
    attr_accessor :two_step_procedure_id

    # Must be passed when the used interface has the property REDIRECT_APPROACH. The user will be redirected to the given URL from the bank's website after having entered his credentials. Must use HTTPS protocol.
    attr_accessor :redirect_url

    # Must be passed when re-triggering the service AFTER the user has been redirected back to you from the bank's website. The value must consist of the complete query parameter list that was contained in the received redirect.
    attr_accessor :redirect_callback

    # The interface to use for connecting with the bank.
    attr_accessor :interface

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bank_connection_id' => :'bankConnectionId',
        :'login_credentials' => :'loginCredentials',
        :'store_secrets' => :'storeSecrets',
        :'challenge_response' => :'challengeResponse',
        :'two_step_procedure_id' => :'twoStepProcedureId',
        :'redirect_url' => :'redirectUrl',
        :'redirect_callback' => :'redirectCallback',
        :'interface' => :'interface'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bank_connection_id' => :'Integer',
        :'login_credentials' => :'Array<LoginCredentialData>',
        :'store_secrets' => :'BOOLEAN',
        :'challenge_response' => :'String',
        :'two_step_procedure_id' => :'String',
        :'redirect_url' => :'String',
        :'redirect_callback' => :'String',
        :'interface' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'bankConnectionId')
        self.bank_connection_id = attributes[:'bankConnectionId']
      end

      if attributes.has_key?(:'loginCredentials')
        if (value = attributes[:'loginCredentials']).is_a?(Array)
          self.login_credentials = value
        end
      end

      if attributes.has_key?(:'storeSecrets')
        self.store_secrets = attributes[:'storeSecrets']
      else
        self.store_secrets = false
      end

      if attributes.has_key?(:'challengeResponse')
        self.challenge_response = attributes[:'challengeResponse']
      end

      if attributes.has_key?(:'twoStepProcedureId')
        self.two_step_procedure_id = attributes[:'twoStepProcedureId']
      end

      if attributes.has_key?(:'redirectUrl')
        self.redirect_url = attributes[:'redirectUrl']
      end

      if attributes.has_key?(:'redirectCallback')
        self.redirect_callback = attributes[:'redirectCallback']
      end

      if attributes.has_key?(:'interface')
        self.interface = attributes[:'interface']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @bank_connection_id.nil?
        invalid_properties.push('invalid value for "bank_connection_id", bank_connection_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bank_connection_id.nil?
      interface_validator = EnumAttributeValidator.new('String', ['FINTS_SERVER', 'WEB_SCRAPER', 'XS2A'])
      return false unless interface_validator.valid?(@interface)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interface Object to be assigned
    def interface=(interface)
      validator = EnumAttributeValidator.new('String', ['FINTS_SERVER', 'WEB_SCRAPER', 'XS2A'])
      unless validator.valid?(interface)
        fail ArgumentError, 'invalid value for "interface", must be one of #{validator.allowable_values}.'
      end
      @interface = interface
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bank_connection_id == o.bank_connection_id &&
          login_credentials == o.login_credentials &&
          store_secrets == o.store_secrets &&
          challenge_response == o.challenge_response &&
          two_step_procedure_id == o.two_step_procedure_id &&
          redirect_url == o.redirect_url &&
          redirect_callback == o.redirect_callback &&
          interface == o.interface
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bank_connection_id, login_credentials, store_secrets, challenge_response, two_step_procedure_id, redirect_url, redirect_callback, interface].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = FinapiApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
