=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module FinapiApi
  # Mock transaction data
  class NewTransaction
    # Amount. Required.
    attr_accessor :amount

    # Purpose. Any symbols are allowed. Maximum length is 2000. Optional. Default value: null.
    attr_accessor :purpose

    # Counterpart. Any symbols are allowed. Maximum length is 80. Optional. Default value: null.
    attr_accessor :counterpart

    # Counterpart IBAN. Optional. Default value: null.
    attr_accessor :counterpart_iban

    # Counterpart BLZ. Optional. Default value: null.
    attr_accessor :counterpart_blz

    # Counterpart BIC. Optional. Default value: null.
    attr_accessor :counterpart_bic

    # Counterpart account number. Maximum length is 34. Optional. Default value: null.
    attr_accessor :counterpart_account_number

    # Booking date in the format 'YYYY-MM-DD'.<br/><br/>If the date lies back more than 10 days from the booking date of the latest transaction that currently exists in the account, then this transaction will be ignored and not imported. If the date depicts a date in the future, then finAPI will deal with it the same way as it does with real transactions during a real update (see fields 'bankBookingDate' and 'finapiBookingDate' in the Transaction Resource for explanation).<br/><br/>This field is optional, default value is the current date.
    attr_accessor :booking_date

    # Value date in the format 'YYYY-MM-DD'. Optional. Default value: Same as the booking date.
    attr_accessor :value_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'purpose' => :'purpose',
        :'counterpart' => :'counterpart',
        :'counterpart_iban' => :'counterpartIban',
        :'counterpart_blz' => :'counterpartBlz',
        :'counterpart_bic' => :'counterpartBic',
        :'counterpart_account_number' => :'counterpartAccountNumber',
        :'booking_date' => :'bookingDate',
        :'value_date' => :'valueDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'purpose' => :'String',
        :'counterpart' => :'String',
        :'counterpart_iban' => :'String',
        :'counterpart_blz' => :'String',
        :'counterpart_bic' => :'String',
        :'counterpart_account_number' => :'String',
        :'booking_date' => :'String',
        :'value_date' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.has_key?(:'counterpart')
        self.counterpart = attributes[:'counterpart']
      end

      if attributes.has_key?(:'counterpartIban')
        self.counterpart_iban = attributes[:'counterpartIban']
      end

      if attributes.has_key?(:'counterpartBlz')
        self.counterpart_blz = attributes[:'counterpartBlz']
      end

      if attributes.has_key?(:'counterpartBic')
        self.counterpart_bic = attributes[:'counterpartBic']
      end

      if attributes.has_key?(:'counterpartAccountNumber')
        self.counterpart_account_number = attributes[:'counterpartAccountNumber']
      end

      if attributes.has_key?(:'bookingDate')
        self.booking_date = attributes[:'bookingDate']
      end

      if attributes.has_key?(:'valueDate')
        self.value_date = attributes[:'valueDate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          purpose == o.purpose &&
          counterpart == o.counterpart &&
          counterpart_iban == o.counterpart_iban &&
          counterpart_blz == o.counterpart_blz &&
          counterpart_bic == o.counterpart_bic &&
          counterpart_account_number == o.counterpart_account_number &&
          booking_date == o.booking_date &&
          value_date == o.value_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount, purpose, counterpart, counterpart_iban, counterpart_blz, counterpart_bic, counterpart_account_number, booking_date, value_date].hash
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