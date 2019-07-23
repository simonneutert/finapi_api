=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module FinapiApiClient
  # Container for a bank account's data
  class Account
    # Account identifier
    attr_accessor :id

    # Identifier of the bank connection that this account belongs to
    attr_accessor :bank_connection_id

    # Account name
    attr_accessor :account_name

    # (National) account number. Note that this value might change whenever the account is updated (for example, leading zeros might be added or removed).
    attr_accessor :account_number

    # Account's sub-account-number. Note that this field can change from 'null' to a value - or vice versa - any time when the account is being updated. This is subject to changes within the bank's internal account management.
    attr_accessor :sub_account_number

    # Account's IBAN. Note that this field can change from 'null' to a value - or vice versa - any time when the account is being updated. This is subject to changes within the bank's internal account management.
    attr_accessor :iban

    # Name of the account holder
    attr_accessor :account_holder_name

    # Bank's internal identification of the account holder. Note that if your client has no license for processing this field, it will always be 'XXXXX'
    attr_accessor :account_holder_id

    # Account's currency
    attr_accessor :account_currency

    # Identifier of the account's type. Note that, in general, the type of an account can change any time when the account is being updated. This is subject to changes within the bank's internal account management. However, if the account's type has previously been changed explicitly (via the PATCH method), then the explicitly set type will NOT be automatically changed anymore, even if the type has changed on the bank side. <br/>1 = Checking,<br/>2 = Savings,<br/>3 = CreditCard,<br/>4 = Security,<br/>5 = Loan,<br/>6 = Pocket (DEPRECATED; will not be returned for any account unless this type has explicitly been set via PATCH),<br/>7 = Membership,<br/>8 = Bausparen<br/>
    attr_accessor :account_type_id

    # Name of the account's type
    attr_accessor :account_type_name

    # Current account balance
    attr_accessor :balance

    # Current overdraft
    attr_accessor :overdraft

    # Overdraft limit
    attr_accessor :overdraft_limit

    # Current available funds. Note that this field is only set if finAPI can make a definite statement about the current available funds. This might not always be the case, for example if there is not enough information available about the overdraft limit and current overdraft.
    attr_accessor :available_funds

    # THIS FIELD IS DEPRECATED AND WILL BE REMOVED. Refer to the corresponding field in 'interfaces' instead.<br/><br/>Timestamp of when the account was last successfully updated (or initially imported); more precisely: time when the account data (balance and positions) has been stored into the finAPI databases. The value is returned in the format 'YYYY-MM-DD HH:MM:SS.SSS' (german time).
    attr_accessor :last_successful_update

    # THIS FIELD IS DEPRECATED AND WILL BE REMOVED. Refer to the corresponding field in 'interfaces' instead.<br/><br/>Timestamp of when the account was last tried to be updated (or initially imported); more precisely: time when the update (or initial import) was triggered. The value is returned in the format 'YYYY-MM-DD HH:MM:SS.SSS' (german time).
    attr_accessor :last_update_attempt

    # Indicating whether this account is 'new' or not. Any newly imported account will have this flag initially set to true, and remain so until you set it to false (see PATCH /accounts/<id>). How you use this field is up to your interpretation, however it is recommended to set the flag to false for all accounts right after the initial import of the bank connection. This way, you will be able recognize accounts that get newly imported during a later update of the bank connection, by checking for any accounts with the flag set to true right after an update.
    attr_accessor :is_new

    # THIS FIELD IS DEPRECATED AND WILL BE REMOVED. Refer to the 'status' field in 'interfaces' instead.<br/><br/>The current status of the account. Possible values are:<br/>&bull; <code>UPDATED</code> means that the account is up to date from finAPI's point of view. This means that no current import/update is running, and the previous import/update could successfully update the account's data (e.g. transactions and securities), and the bank given balance matched the transaction's calculated sum, meaning that no adjusting entry ('Zwischensaldo' transaction) was inserted.<br/>&bull; <code>UPDATED_FIXED</code> means that the account is up to date from finAPI's point of view (no current import/update is running, and the previous import/update could successfully update the account's data), BUT there was a deviation in the bank given balance which was fixed by adding an adjusting entry ('Zwischensaldo' transaction).<br/>&bull; <code>DOWNLOAD_IN_PROGRESS</code> means that the account's data is currently being imported/updated.<br/>&bull; <code>DOWNLOAD_FAILED</code> means that the account data could not get successfully imported or updated. Possible reasons: finAPI could not get the account's balance, or it could not parse all transactions/securities, or some internal error has occurred. Also, it could mean that finAPI could not even get to the point of receiving the account data from the bank server, for example because of incorrect login credentials or a network problem. Note however that when we get a balance and just an empty list of transactions or securities, then this is regarded as valid and successful download. The reason for this is that for some accounts that have little activity, we may actually get no recent transactions but only a balance.<br/>&bull; <code>DEPRECATED</code> means that the account could no longer get matched with any account from the bank server. This can mean either that the account was terminated by the user and is no longer sent by the bank server, or that finAPI could no longer match it because the account's data (name, type, iban, account number, etc.) has been changed by the bank.
    attr_accessor :status

    # THIS FIELD IS DEPRECATED AND WILL BE REMOVED. Refer to the 'capabilities' in 'interfaces' field instead.<br/><br/>List of orders that this account supports. Possible values are:<br/><br/>&bull; <code>SEPA_MONEY_TRANSFER</code> - single money transfer<br/>&bull; <code>SEPA_COLLECTIVE_MONEY_TRANSFER</code> - collective money transfer<br/>&bull; <code>SEPA_BASIC_DIRECT_DEBIT</code> - single basic direct debit<br/>&bull; <code>SEPA_BASIC_COLLECTIVE_DIRECT_DEBIT</code> - collective basic direct debit<br/>&bull; <code>SEPA_B2B_DIRECT_DEBIT</code> - single Business-To-Business direct debit<br/>&bull; <code>SEPA_B2B_COLLECTIVE_DIRECT_DEBIT</code> - collective Business-To-Business direct debit<br/><br/>Note that this list may be empty if the account is not supporting any of the above orders. Also note that the list is refreshed each time the account is being updated, so available orders may get added or removed in the course of an account update.
    attr_accessor :supported_orders

    # List of clearing accounts that relate to this account. Clearing accounts can be used for money transfers (see field 'clearingAccountId' of the 'Request SEPA Money Transfer' service).<br><br>NOTE: This field is deprecated and will be removed at some point.
    attr_accessor :clearing_accounts

    # Set of interfaces to which this account is connected
    attr_accessor :interfaces

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
        :'id' => :'id',
        :'bank_connection_id' => :'bankConnectionId',
        :'account_name' => :'accountName',
        :'account_number' => :'accountNumber',
        :'sub_account_number' => :'subAccountNumber',
        :'iban' => :'iban',
        :'account_holder_name' => :'accountHolderName',
        :'account_holder_id' => :'accountHolderId',
        :'account_currency' => :'accountCurrency',
        :'account_type_id' => :'accountTypeId',
        :'account_type_name' => :'accountTypeName',
        :'balance' => :'balance',
        :'overdraft' => :'overdraft',
        :'overdraft_limit' => :'overdraftLimit',
        :'available_funds' => :'availableFunds',
        :'last_successful_update' => :'lastSuccessfulUpdate',
        :'last_update_attempt' => :'lastUpdateAttempt',
        :'is_new' => :'isNew',
        :'status' => :'status',
        :'supported_orders' => :'supportedOrders',
        :'clearing_accounts' => :'clearingAccounts',
        :'interfaces' => :'interfaces'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'bank_connection_id' => :'Integer',
        :'account_name' => :'String',
        :'account_number' => :'String',
        :'sub_account_number' => :'String',
        :'iban' => :'String',
        :'account_holder_name' => :'String',
        :'account_holder_id' => :'String',
        :'account_currency' => :'String',
        :'account_type_id' => :'Integer',
        :'account_type_name' => :'String',
        :'balance' => :'Float',
        :'overdraft' => :'Float',
        :'overdraft_limit' => :'Float',
        :'available_funds' => :'Float',
        :'last_successful_update' => :'String',
        :'last_update_attempt' => :'String',
        :'is_new' => :'BOOLEAN',
        :'status' => :'String',
        :'supported_orders' => :'Array<String>',
        :'clearing_accounts' => :'Array<ClearingAccountData>',
        :'interfaces' => :'Array<AccountInterface>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'bankConnectionId')
        self.bank_connection_id = attributes[:'bankConnectionId']
      end

      if attributes.has_key?(:'accountName')
        self.account_name = attributes[:'accountName']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'subAccountNumber')
        self.sub_account_number = attributes[:'subAccountNumber']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'accountHolderName')
        self.account_holder_name = attributes[:'accountHolderName']
      end

      if attributes.has_key?(:'accountHolderId')
        self.account_holder_id = attributes[:'accountHolderId']
      end

      if attributes.has_key?(:'accountCurrency')
        self.account_currency = attributes[:'accountCurrency']
      end

      if attributes.has_key?(:'accountTypeId')
        self.account_type_id = attributes[:'accountTypeId']
      end

      if attributes.has_key?(:'accountTypeName')
        self.account_type_name = attributes[:'accountTypeName']
      end

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'overdraft')
        self.overdraft = attributes[:'overdraft']
      end

      if attributes.has_key?(:'overdraftLimit')
        self.overdraft_limit = attributes[:'overdraftLimit']
      end

      if attributes.has_key?(:'availableFunds')
        self.available_funds = attributes[:'availableFunds']
      end

      if attributes.has_key?(:'lastSuccessfulUpdate')
        self.last_successful_update = attributes[:'lastSuccessfulUpdate']
      end

      if attributes.has_key?(:'lastUpdateAttempt')
        self.last_update_attempt = attributes[:'lastUpdateAttempt']
      end

      if attributes.has_key?(:'isNew')
        self.is_new = attributes[:'isNew']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'supportedOrders')
        if (value = attributes[:'supportedOrders']).is_a?(Array)
          self.supported_orders = value
        end
      end

      if attributes.has_key?(:'clearingAccounts')
        if (value = attributes[:'clearingAccounts']).is_a?(Array)
          self.clearing_accounts = value
        end
      end

      if attributes.has_key?(:'interfaces')
        if (value = attributes[:'interfaces']).is_a?(Array)
          self.interfaces = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @bank_connection_id.nil?
        invalid_properties.push('invalid value for "bank_connection_id", bank_connection_id cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @account_type_id.nil?
        invalid_properties.push('invalid value for "account_type_id", account_type_id cannot be nil.')
      end

      if @account_type_name.nil?
        invalid_properties.push('invalid value for "account_type_name", account_type_name cannot be nil.')
      end

      if @is_new.nil?
        invalid_properties.push('invalid value for "is_new", is_new cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @supported_orders.nil?
        invalid_properties.push('invalid value for "supported_orders", supported_orders cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @bank_connection_id.nil?
      return false if @account_number.nil?
      return false if @account_type_id.nil?
      return false if @account_type_name.nil?
      return false if @is_new.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['UPDATED', 'UPDATED_FIXED', 'DOWNLOAD_IN_PROGRESS', 'DOWNLOAD_FAILED', 'DEPRECATED'])
      return false unless status_validator.valid?(@status)
      return false if @supported_orders.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['UPDATED', 'UPDATED_FIXED', 'DOWNLOAD_IN_PROGRESS', 'DOWNLOAD_FAILED', 'DEPRECATED'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          bank_connection_id == o.bank_connection_id &&
          account_name == o.account_name &&
          account_number == o.account_number &&
          sub_account_number == o.sub_account_number &&
          iban == o.iban &&
          account_holder_name == o.account_holder_name &&
          account_holder_id == o.account_holder_id &&
          account_currency == o.account_currency &&
          account_type_id == o.account_type_id &&
          account_type_name == o.account_type_name &&
          balance == o.balance &&
          overdraft == o.overdraft &&
          overdraft_limit == o.overdraft_limit &&
          available_funds == o.available_funds &&
          last_successful_update == o.last_successful_update &&
          last_update_attempt == o.last_update_attempt &&
          is_new == o.is_new &&
          status == o.status &&
          supported_orders == o.supported_orders &&
          clearing_accounts == o.clearing_accounts &&
          interfaces == o.interfaces
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, bank_connection_id, account_name, account_number, sub_account_number, iban, account_holder_name, account_holder_id, account_currency, account_type_id, account_type_name, balance, overdraft, overdraft_limit, available_funds, last_successful_update, last_update_attempt, is_new, status, supported_orders, clearing_accounts, interfaces].hash
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
        temp_model = FinapiApiClient.const_get(type).new
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