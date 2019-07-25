=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module FinapiApi
  # Parameters for a single or collective SEPA money transfer order request
  class RequestSepaMoneyTransferParams
    # Name of the recipient. Note: Neither finAPI nor the involved bank servers are guaranteed to validate the recipient name. Even if the recipient name does not depict the actual registered account holder of the specified recipient account, the money transfer request might still be successful. This field is optional only when you pass a clearing account as the recipient. Otherwise, this field is required.
    attr_accessor :recipient_name

    # IBAN of the recipient's account. This field is optional only when you pass a clearing account as the recipient. Otherwise, this field is required.
    attr_accessor :recipient_iban

    # BIC of the recipient's account. Note: This field is optional when you pass a clearing account as the recipient or if the bank connection of the account that you want to transfer money from supports the IBAN-Only money transfer. You can find this out via GET /bankConnections/<id>. Also note that when a BIC is given, then this BIC will be used for the money transfer request independent of whether it is required or not (unless you pass a clearing account, in which case this field will always be ignored).
    attr_accessor :recipient_bic

    # Identifier of a clearing account. If this field is set, then the fields 'recipientName', 'recipientIban' and 'recipientBic' will be ignored and the recipient account will be the specified clearing account.
    attr_accessor :clearing_account_id

    # The amount to transfer. Must be a positive decimal number with at most two decimal places (e.g. 99.99)
    attr_accessor :amount

    # The purpose of the transfer transaction
    attr_accessor :purpose

    # SEPA purpose code, according to ISO 20022, external codes set.
    attr_accessor :sepa_purpose_code

    # Identifier of the bank account that you want to transfer money from
    attr_accessor :account_id

    # Online banking PIN. Any symbols are allowed. Max length: 170. If a PIN is stored in the bank connection, then this field may remain unset. If finAPI's web form is not required and the field is set though then it will always be used (even if there is some other PIN stored in the bank connection). If you want the user to enter a PIN in finAPI's web form even when a PIN is stored, then just set the field to any value, so that the service recognizes that you wish to use the web form flow.
    attr_accessor :banking_pin

    # Whether to store the PIN. If the PIN is stored, it is not required to pass the PIN again when executing SEPA orders. Default value is 'false'. <br/><br/>NOTES:<br/> - before you set this field to true, please regard the 'pinsAreVolatile' flag of the bank connection that the account belongs to;<br/> - this field is ignored in case when the user will need to use finAPI's web form. The user will be able to decide whether to store the PIN or not in the web form, depending on the 'storeSecretsAvailableInWebForm' setting (see Client Configuration).
    attr_accessor :store_secrets

    # The bank-given ID of the two-step-procedure that should be used for the order. For a list of available two-step-procedures, see the corresponding bank connection (GET /bankConnections). If this field is not set, then the bank connection's default two-step-procedure will be used. Note that in this case, when the bank connection has no default two-step-procedure set, then the response of the service depends on whether you need to use finAPI's web form or not. If you need to use the web form, the user will be prompted to select the two-step-procedure within the web form. If you don't need to use the web form, then the service will return an error (passing a value for this field is required in this case).
    attr_accessor :two_step_procedure_id

    # Challenge response. This field should be set only when the previous attempt to request a SEPA money transfer failed with HTTP code 510, i.e. the bank sent a challenge for the user for an additional authentication. In this case, this field must contain the response to the bank's challenge. Please note that in case of using finAPI's web form you have to leave this field unset and the application will automatically recognize that the user has to input challenge response and then a web form will be shown to the user.
    attr_accessor :challenge_response

    # Execution date for the money transfer(s), in the format 'YYYY-MM-DD'. If not specified, then the current date will be used.
    attr_accessor :execution_date

    # This field is only regarded when you pass multiple orders. It determines whether the orders should be processed by the bank as one collective booking (in case of 'false'), or as single bookings (in case of 'true'). Default value is 'false'.
    attr_accessor :single_booking

    # In case that you want to submit not just a single money transfer, but do a collective money transfer, use this field to pass a list of additional money transfer orders. The service will then pass a collective money transfer request to the bank, including both the money transfer specified on the top-level, as well as all money transfers specified in this list. The maximum count of money transfers that you can pass (in total) is 15000. Note that you should check the account's 'supportedOrders' field to find out whether or not it is supporting collective money transfers.
    attr_accessor :additional_money_transfers

    # Whether to store the PIN. If the PIN is stored, it is not required to pass the PIN again when executing SEPA orders. Default value is 'false'. <br/><br/>NOTES:<br/> - before you set this field to true, please regard the 'pinsAreVolatile' flag of the bank connection that the account belongs to;<br/> - this field is ignored in case when the user will need to use finAPI's web form. The user will be able to decide whether to store the PIN or not in the web form, depending on the 'storeSecretsAvailableInWebForm' setting (see Client Configuration).<br><br>NOTE: This field is deprecated and will be removed at some point. Use 'storeSecrets' instead.
    attr_accessor :store_pin

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'recipient_name' => :'recipientName',
        :'recipient_iban' => :'recipientIban',
        :'recipient_bic' => :'recipientBic',
        :'clearing_account_id' => :'clearingAccountId',
        :'amount' => :'amount',
        :'purpose' => :'purpose',
        :'sepa_purpose_code' => :'sepaPurposeCode',
        :'account_id' => :'accountId',
        :'banking_pin' => :'bankingPin',
        :'store_secrets' => :'storeSecrets',
        :'two_step_procedure_id' => :'twoStepProcedureId',
        :'challenge_response' => :'challengeResponse',
        :'execution_date' => :'executionDate',
        :'single_booking' => :'singleBooking',
        :'additional_money_transfers' => :'additionalMoneyTransfers',
        :'store_pin' => :'storePin'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'recipient_name' => :'String',
        :'recipient_iban' => :'String',
        :'recipient_bic' => :'String',
        :'clearing_account_id' => :'String',
        :'amount' => :'Float',
        :'purpose' => :'String',
        :'sepa_purpose_code' => :'String',
        :'account_id' => :'Integer',
        :'banking_pin' => :'String',
        :'store_secrets' => :'BOOLEAN',
        :'two_step_procedure_id' => :'String',
        :'challenge_response' => :'String',
        :'execution_date' => :'String',
        :'single_booking' => :'BOOLEAN',
        :'additional_money_transfers' => :'Array<SingleMoneyTransferRecipientData>',
        :'store_pin' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'recipientName')
        self.recipient_name = attributes[:'recipientName']
      end

      if attributes.has_key?(:'recipientIban')
        self.recipient_iban = attributes[:'recipientIban']
      end

      if attributes.has_key?(:'recipientBic')
        self.recipient_bic = attributes[:'recipientBic']
      end

      if attributes.has_key?(:'clearingAccountId')
        self.clearing_account_id = attributes[:'clearingAccountId']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.has_key?(:'sepaPurposeCode')
        self.sepa_purpose_code = attributes[:'sepaPurposeCode']
      end

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'bankingPin')
        self.banking_pin = attributes[:'bankingPin']
      end

      if attributes.has_key?(:'storeSecrets')
        self.store_secrets = attributes[:'storeSecrets']
      else
        self.store_secrets = false
      end

      if attributes.has_key?(:'twoStepProcedureId')
        self.two_step_procedure_id = attributes[:'twoStepProcedureId']
      end

      if attributes.has_key?(:'challengeResponse')
        self.challenge_response = attributes[:'challengeResponse']
      end

      if attributes.has_key?(:'executionDate')
        self.execution_date = attributes[:'executionDate']
      end

      if attributes.has_key?(:'singleBooking')
        self.single_booking = attributes[:'singleBooking']
      else
        self.single_booking = false
      end

      if attributes.has_key?(:'additionalMoneyTransfers')
        if (value = attributes[:'additionalMoneyTransfers']).is_a?(Array)
          self.additional_money_transfers = value
        end
      end

      if attributes.has_key?(:'storePin')
        self.store_pin = attributes[:'storePin']
      else
        self.store_pin = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @account_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          recipient_name == o.recipient_name &&
          recipient_iban == o.recipient_iban &&
          recipient_bic == o.recipient_bic &&
          clearing_account_id == o.clearing_account_id &&
          amount == o.amount &&
          purpose == o.purpose &&
          sepa_purpose_code == o.sepa_purpose_code &&
          account_id == o.account_id &&
          banking_pin == o.banking_pin &&
          store_secrets == o.store_secrets &&
          two_step_procedure_id == o.two_step_procedure_id &&
          challenge_response == o.challenge_response &&
          execution_date == o.execution_date &&
          single_booking == o.single_booking &&
          additional_money_transfers == o.additional_money_transfers &&
          store_pin == o.store_pin
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [recipient_name, recipient_iban, recipient_bic, clearing_account_id, amount, purpose, sepa_purpose_code, account_id, banking_pin, store_secrets, two_step_procedure_id, challenge_response, execution_date, single_booking, additional_money_transfers, store_pin].hash
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