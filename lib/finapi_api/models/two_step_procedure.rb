=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module FinapiApi
  # Two-step-procedure for a communication with a bank server, e.g. for doing a money transfer
  class TwoStepProcedure
    # Bank-given ID of the procedure
    attr_accessor :procedure_id

    # Bank-given name of the procedure
    attr_accessor :procedure_name

    # The challenge type of the procedure. Possible values are:<br/><br/>&bull; <code>TEXT</code> - the challenge will be a text that contains instructions for the user on how to retrieve the TAN.<br/>&bull; <code>PHOTO</code> - the challenge will contain a BASE-64 string depicting a photo (or any kind of QR-code-like data) that must be shown to the user.<br/>&bull; <code>FLICKER_CODE</code> - the challenge will contain a BASE-64 string depicting a flicker code animation that must be shown to the user.<br/><br/>Note that this challenge type information does not originate from the bank server, but is determined by finAPI internally. There is no guarantee that the determined challenge type is correct. Note also that this field may not be set, meaning that finAPI could not determine the challenge type of the procedure.<br/><br/>For further information on how to deal with the challenges, please see <a href='https://finapi.zendesk.com/hc/en-us/articles/219117247-SEPA-Money-Transfer'>this article</a> on our Dev Portal.
    attr_accessor :procedure_challenge_type

    # If 'true', then requesting a SEPA order with this procedure will implicitly trigger the execution of the order. For example, if you do a money transfer with this procedure, then calling the /requestSepaMoneyTransfer service will immediately execute the order (a call to /executeSepaMoneyTransfer will not be necessary). On the other hand, if this flag is 'false', then doing a money transfer with this procedure will require you to first call /requestSepaMoneyTransfer, and then call /executeSepaMoneyTransfer.
    attr_accessor :implicit_execute

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'procedure_id' => :'procedureId',
        :'procedure_name' => :'procedureName',
        :'procedure_challenge_type' => :'procedureChallengeType',
        :'implicit_execute' => :'implicitExecute'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'procedure_id' => :'String',
        :'procedure_name' => :'String',
        :'procedure_challenge_type' => :'String',
        :'implicit_execute' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'procedureId')
        self.procedure_id = attributes[:'procedureId']
      end

      if attributes.has_key?(:'procedureName')
        self.procedure_name = attributes[:'procedureName']
      end

      if attributes.has_key?(:'procedureChallengeType')
        self.procedure_challenge_type = attributes[:'procedureChallengeType']
      end

      if attributes.has_key?(:'implicitExecute')
        self.implicit_execute = attributes[:'implicitExecute']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @procedure_id.nil?
        invalid_properties.push('invalid value for "procedure_id", procedure_id cannot be nil.')
      end

      if @procedure_name.nil?
        invalid_properties.push('invalid value for "procedure_name", procedure_name cannot be nil.')
      end

      if @implicit_execute.nil?
        invalid_properties.push('invalid value for "implicit_execute", implicit_execute cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @procedure_id.nil?
      return false if @procedure_name.nil?
      return false if @implicit_execute.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          procedure_id == o.procedure_id &&
          procedure_name == o.procedure_name &&
          procedure_challenge_type == o.procedure_challenge_type &&
          implicit_execute == o.implicit_execute
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [procedure_id, procedure_name, procedure_challenge_type, implicit_execute].hash
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
