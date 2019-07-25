=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

# Common files
require 'finapi_api/api_client'
require 'finapi_api/api_error'
require 'finapi_api/version'
require 'finapi_api/configuration'

# Models
require 'finapi_api/models/access_token'
require 'finapi_api/models/account'
require 'finapi_api/models/account_interface'
require 'finapi_api/models/account_list'
require 'finapi_api/models/account_params'
require 'finapi_api/models/bad_credentials_error'
require 'finapi_api/models/bank'
require 'finapi_api/models/bank_connection'
require 'finapi_api/models/bank_connection_interface'
require 'finapi_api/models/bank_connection_list'
require 'finapi_api/models/bank_connection_owner'
require 'finapi_api/models/bank_consent'
require 'finapi_api/models/bank_interface'
require 'finapi_api/models/bank_interface_login_field'
require 'finapi_api/models/bank_list'
require 'finapi_api/models/cash_flow'
require 'finapi_api/models/cash_flow_list'
require 'finapi_api/models/categorization_check_result'
require 'finapi_api/models/categorization_check_results'
require 'finapi_api/models/category'
require 'finapi_api/models/category_list'
require 'finapi_api/models/category_params'
require 'finapi_api/models/change_client_credentials_params'
require 'finapi_api/models/check_categorization_data'
require 'finapi_api/models/check_categorization_transaction_data'
require 'finapi_api/models/clearing_account_data'
require 'finapi_api/models/client_configuration'
require 'finapi_api/models/client_configuration_params'
require 'finapi_api/models/connect_interface_params'
require 'finapi_api/models/daily_balance'
require 'finapi_api/models/daily_balance_list'
require 'finapi_api/models/direct_debit_ordering_response'
require 'finapi_api/models/edit_bank_connection_params'
require 'finapi_api/models/edit_category_params'
require 'finapi_api/models/error_details'
require 'finapi_api/models/error_message'
require 'finapi_api/models/execute_password_change_params'
require 'finapi_api/models/execute_sepa_direct_debit_params'
require 'finapi_api/models/execute_sepa_money_transfer_params'
require 'finapi_api/models/iban_rule'
require 'finapi_api/models/iban_rule_list'
require 'finapi_api/models/iban_rule_params'
require 'finapi_api/models/iban_rules_params'
require 'finapi_api/models/identifier_list'
require 'finapi_api/models/identifiers_params'
require 'finapi_api/models/import_bank_connection_params'
require 'finapi_api/models/keyword_rule'
require 'finapi_api/models/keyword_rule_list'
require 'finapi_api/models/keyword_rule_params'
require 'finapi_api/models/keyword_rules_params'
require 'finapi_api/models/label'
require 'finapi_api/models/label_list'
require 'finapi_api/models/label_params'
require 'finapi_api/models/login_credential_data'
require 'finapi_api/models/login_credential_resource'
require 'finapi_api/models/mock_account_data'
require 'finapi_api/models/mock_bank_connection_update'
require 'finapi_api/models/mock_batch_update_params'
require 'finapi_api/models/money_transfer_ordering_response'
require 'finapi_api/models/monthly_user_stats'
require 'finapi_api/models/multi_step_authentication'
require 'finapi_api/models/new_transaction'
require 'finapi_api/models/notification_rule'
require 'finapi_api/models/notification_rule_list'
require 'finapi_api/models/notification_rule_params'
require 'finapi_api/models/pageable_bank_list'
require 'finapi_api/models/pageable_category_list'
require 'finapi_api/models/pageable_iban_rule_list'
require 'finapi_api/models/pageable_keyword_rule_list'
require 'finapi_api/models/pageable_label_list'
require 'finapi_api/models/pageable_payment_resources'
require 'finapi_api/models/pageable_security_list'
require 'finapi_api/models/pageable_transaction_list'
require 'finapi_api/models/pageable_user_info_list'
require 'finapi_api/models/paging'
require 'finapi_api/models/password_changing_resource'
require 'finapi_api/models/payment'
require 'finapi_api/models/payment_execution_response'
require 'finapi_api/models/paypal_transaction_data'
require 'finapi_api/models/remove_interface_params'
require 'finapi_api/models/request_password_change_params'
require 'finapi_api/models/request_sepa_direct_debit_params'
require 'finapi_api/models/request_sepa_money_transfer_params'
require 'finapi_api/models/security'
require 'finapi_api/models/security_list'
require 'finapi_api/models/single_direct_debit_data'
require 'finapi_api/models/single_money_transfer_recipient_data'
require 'finapi_api/models/split_transactions_params'
require 'finapi_api/models/sub_transaction_params'
require 'finapi_api/models/train_categorization_data'
require 'finapi_api/models/train_categorization_transaction_data'
require 'finapi_api/models/transaction'
require 'finapi_api/models/transaction_list'
require 'finapi_api/models/trigger_categorization_params'
require 'finapi_api/models/two_step_procedure'
require 'finapi_api/models/update_bank_connection_params'
require 'finapi_api/models/update_multiple_transactions_params'
require 'finapi_api/models/update_result'
require 'finapi_api/models/update_transactions_params'
require 'finapi_api/models/user'
require 'finapi_api/models/user_create_params'
require 'finapi_api/models/user_identifiers_list'
require 'finapi_api/models/user_identifiers_params'
require 'finapi_api/models/user_info'
require 'finapi_api/models/user_update_params'
require 'finapi_api/models/verification_status_resource'
require 'finapi_api/models/web_form'

# APIs
require 'finapi_api/api/accounts_api'
require 'finapi_api/api/authorization_api'
require 'finapi_api/api/bank_connections_api'
require 'finapi_api/api/banks_api'
require 'finapi_api/api/categories_api'
require 'finapi_api/api/client_configuration_api'
require 'finapi_api/api/labels_api'
require 'finapi_api/api/mandator_administration_api'
require 'finapi_api/api/mocks_and_tests_api'
require 'finapi_api/api/notification_rules_api'
require 'finapi_api/api/payments_api'
require 'finapi_api/api/securities_api'
require 'finapi_api/api/transactions_api'
require 'finapi_api/api/users_api'
require 'finapi_api/api/web_forms_api'

module FinapiApi
  class << self
    # Customize default settings for the SDK using block.
    #   FinapiApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
