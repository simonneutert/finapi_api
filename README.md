# swagger_client

FinapiApi - the Ruby gem for the finAPI RESTful Services (alpha build)

finAPI RESTful Services (alpha build)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: finAPI PSD2-alpha (based on v.1.73.0)
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::AccountsApi.new

id = 789 # Integer | Identifier of the account to delete


begin
  #Delete an account
  api_instance.delete_account(id)
rescue FinapiApi::ApiError => e
  puts "Exception when calling AccountsApi->delete_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FinapiApi::AccountsApi* | [**delete_account**](docs/AccountsApi.md#delete_account) | **DELETE** /api/v1/accounts/{id} | Delete an account
*FinapiApi::AccountsApi* | [**delete_all_accounts**](docs/AccountsApi.md#delete_all_accounts) | **DELETE** /api/v1/accounts | Delete all accounts
*FinapiApi::AccountsApi* | [**edit_account**](docs/AccountsApi.md#edit_account) | **PATCH** /api/v1/accounts/{id} | Edit an account
*FinapiApi::AccountsApi* | [**execute_sepa_direct_debit**](docs/AccountsApi.md#execute_sepa_direct_debit) | **POST** /api/v1/accounts/executeSepaDirectDebit | Execute SEPA Direct Debit
*FinapiApi::AccountsApi* | [**execute_sepa_money_transfer**](docs/AccountsApi.md#execute_sepa_money_transfer) | **POST** /api/v1/accounts/executeSepaMoneyTransfer | Execute SEPA Money Transfer
*FinapiApi::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /api/v1/accounts/{id} | Get an account
*FinapiApi::AccountsApi* | [**get_and_search_all_accounts**](docs/AccountsApi.md#get_and_search_all_accounts) | **GET** /api/v1/accounts | Get and search all accounts
*FinapiApi::AccountsApi* | [**get_daily_balances**](docs/AccountsApi.md#get_daily_balances) | **GET** /api/v1/accounts/dailyBalances | Get daily balances
*FinapiApi::AccountsApi* | [**get_multiple_accounts**](docs/AccountsApi.md#get_multiple_accounts) | **GET** /api/v1/accounts/{ids} | Get multiple accounts
*FinapiApi::AccountsApi* | [**request_sepa_direct_debit**](docs/AccountsApi.md#request_sepa_direct_debit) | **POST** /api/v1/accounts/requestSepaDirectDebit | Request SEPA Direct Debit
*FinapiApi::AccountsApi* | [**request_sepa_money_transfer**](docs/AccountsApi.md#request_sepa_money_transfer) | **POST** /api/v1/accounts/requestSepaMoneyTransfer | Request SEPA Money Transfer
*FinapiApi::AuthorizationApi* | [**get_token**](docs/AuthorizationApi.md#get_token) | **POST** /oauth/token | Get tokens
*FinapiApi::AuthorizationApi* | [**revoke_token**](docs/AuthorizationApi.md#revoke_token) | **POST** /oauth/revoke | Revoke a token
*FinapiApi::BankConnectionsApi* | [**connect_interface**](docs/BankConnectionsApi.md#connect_interface) | **POST** /api/v1/bankConnections/connectInterface | Connect a new interface
*FinapiApi::BankConnectionsApi* | [**delete_all_bank_connections**](docs/BankConnectionsApi.md#delete_all_bank_connections) | **DELETE** /api/v1/bankConnections | Delete all bank connections
*FinapiApi::BankConnectionsApi* | [**delete_bank_connection**](docs/BankConnectionsApi.md#delete_bank_connection) | **DELETE** /api/v1/bankConnections/{id} | Delete a bank connection
*FinapiApi::BankConnectionsApi* | [**edit_bank_connection**](docs/BankConnectionsApi.md#edit_bank_connection) | **PATCH** /api/v1/bankConnections/{id} | Edit a bank connection
*FinapiApi::BankConnectionsApi* | [**get_all_bank_connections**](docs/BankConnectionsApi.md#get_all_bank_connections) | **GET** /api/v1/bankConnections | Get all bank connections
*FinapiApi::BankConnectionsApi* | [**get_bank_connection**](docs/BankConnectionsApi.md#get_bank_connection) | **GET** /api/v1/bankConnections/{id} | Get a bank connection
*FinapiApi::BankConnectionsApi* | [**get_multiple_bank_connections**](docs/BankConnectionsApi.md#get_multiple_bank_connections) | **GET** /api/v1/bankConnections/{ids} | Get multiple bank connections
*FinapiApi::BankConnectionsApi* | [**import_bank_connection**](docs/BankConnectionsApi.md#import_bank_connection) | **POST** /api/v1/bankConnections/import | Import a new bank connection
*FinapiApi::BankConnectionsApi* | [**remove_interface**](docs/BankConnectionsApi.md#remove_interface) | **POST** /api/v1/bankConnections/removeInterface | Remove an interface
*FinapiApi::BankConnectionsApi* | [**update_bank_connection**](docs/BankConnectionsApi.md#update_bank_connection) | **POST** /api/v1/bankConnections/update | Update a bank connection
*FinapiApi::BanksApi* | [**get_and_search_all_banks**](docs/BanksApi.md#get_and_search_all_banks) | **GET** /api/v1/banks | Get and search all banks
*FinapiApi::BanksApi* | [**get_bank**](docs/BanksApi.md#get_bank) | **GET** /api/v1/banks/{id} | Get a bank
*FinapiApi::BanksApi* | [**get_multiple_banks**](docs/BanksApi.md#get_multiple_banks) | **GET** /api/v1/banks/{ids} | Get multiple banks
*FinapiApi::CategoriesApi* | [**create_category**](docs/CategoriesApi.md#create_category) | **POST** /api/v1/categories | Create a new category
*FinapiApi::CategoriesApi* | [**delete_all_categories**](docs/CategoriesApi.md#delete_all_categories) | **DELETE** /api/v1/categories | Delete all categories
*FinapiApi::CategoriesApi* | [**delete_category**](docs/CategoriesApi.md#delete_category) | **DELETE** /api/v1/categories/{id} | Delete a category
*FinapiApi::CategoriesApi* | [**edit_category**](docs/CategoriesApi.md#edit_category) | **PATCH** /api/v1/categories/{id} | Edit a category
*FinapiApi::CategoriesApi* | [**get_and_search_all_categories**](docs/CategoriesApi.md#get_and_search_all_categories) | **GET** /api/v1/categories | Get and search all categories
*FinapiApi::CategoriesApi* | [**get_cash_flows**](docs/CategoriesApi.md#get_cash_flows) | **GET** /api/v1/categories/cashFlows | Get cash flows
*FinapiApi::CategoriesApi* | [**get_category**](docs/CategoriesApi.md#get_category) | **GET** /api/v1/categories/{id} | Get a category
*FinapiApi::CategoriesApi* | [**get_multiple_categories**](docs/CategoriesApi.md#get_multiple_categories) | **GET** /api/v1/categories/{ids} | Get multiple categories
*FinapiApi::CategoriesApi* | [**train_categorization**](docs/CategoriesApi.md#train_categorization) | **POST** /api/v1/categories/trainCategorization | Train categorization
*FinapiApi::ClientConfigurationApi* | [**edit_client_configuration**](docs/ClientConfigurationApi.md#edit_client_configuration) | **PATCH** /api/v1/clientConfiguration | Edit client configuration
*FinapiApi::ClientConfigurationApi* | [**get_client_configuration**](docs/ClientConfigurationApi.md#get_client_configuration) | **GET** /api/v1/clientConfiguration | Get client configuration
*FinapiApi::LabelsApi* | [**create_label**](docs/LabelsApi.md#create_label) | **POST** /api/v1/labels | Create a new label
*FinapiApi::LabelsApi* | [**delete_all_labels**](docs/LabelsApi.md#delete_all_labels) | **DELETE** /api/v1/labels | Delete all labels
*FinapiApi::LabelsApi* | [**delete_label**](docs/LabelsApi.md#delete_label) | **DELETE** /api/v1/labels/{id} | Delete a label
*FinapiApi::LabelsApi* | [**edit_label**](docs/LabelsApi.md#edit_label) | **PATCH** /api/v1/labels/{id} | Edit a label
*FinapiApi::LabelsApi* | [**get_and_search_all_labels**](docs/LabelsApi.md#get_and_search_all_labels) | **GET** /api/v1/labels | Get and search all labels
*FinapiApi::LabelsApi* | [**get_label**](docs/LabelsApi.md#get_label) | **GET** /api/v1/labels/{id} | Get a label
*FinapiApi::LabelsApi* | [**get_multiple_labels**](docs/LabelsApi.md#get_multiple_labels) | **GET** /api/v1/labels/{ids} | Get multiple labels
*FinapiApi::MandatorAdministrationApi* | [**change_client_credentials**](docs/MandatorAdministrationApi.md#change_client_credentials) | **POST** /api/v1/mandatorAdmin/changeClientCredentials | Change client credentials
*FinapiApi::MandatorAdministrationApi* | [**create_iban_rules**](docs/MandatorAdministrationApi.md#create_iban_rules) | **POST** /api/v1/mandatorAdmin/ibanRules | Create IBAN rules
*FinapiApi::MandatorAdministrationApi* | [**create_keyword_rules**](docs/MandatorAdministrationApi.md#create_keyword_rules) | **POST** /api/v1/mandatorAdmin/keywordRules | Create keyword rules
*FinapiApi::MandatorAdministrationApi* | [**delete_iban_rules**](docs/MandatorAdministrationApi.md#delete_iban_rules) | **POST** /api/v1/mandatorAdmin/ibanRules/delete | Delete IBAN rules
*FinapiApi::MandatorAdministrationApi* | [**delete_keyword_rules**](docs/MandatorAdministrationApi.md#delete_keyword_rules) | **POST** /api/v1/mandatorAdmin/keywordRules/delete | Delete keyword rules
*FinapiApi::MandatorAdministrationApi* | [**delete_users**](docs/MandatorAdministrationApi.md#delete_users) | **POST** /api/v1/mandatorAdmin/deleteUsers | Delete users
*FinapiApi::MandatorAdministrationApi* | [**get_iban_rule_list**](docs/MandatorAdministrationApi.md#get_iban_rule_list) | **GET** /api/v1/mandatorAdmin/ibanRules | Get IBAN rules
*FinapiApi::MandatorAdministrationApi* | [**get_keyword_rule_list**](docs/MandatorAdministrationApi.md#get_keyword_rule_list) | **GET** /api/v1/mandatorAdmin/keywordRules | Get keyword rules
*FinapiApi::MandatorAdministrationApi* | [**get_user_list**](docs/MandatorAdministrationApi.md#get_user_list) | **GET** /api/v1/mandatorAdmin/getUserList | Get user list
*FinapiApi::MocksAndTestsApi* | [**check_categorization**](docs/MocksAndTestsApi.md#check_categorization) | **POST** /api/v1/tests/checkCategorization | Check categorization
*FinapiApi::MocksAndTestsApi* | [**mock_batch_update**](docs/MocksAndTestsApi.md#mock_batch_update) | **POST** /api/v1/tests/mockBatchUpdate | Mock batch update
*FinapiApi::NotificationRulesApi* | [**create_notification_rule**](docs/NotificationRulesApi.md#create_notification_rule) | **POST** /api/v1/notificationRules | Create a new notification rule
*FinapiApi::NotificationRulesApi* | [**delete_all_notification_rules**](docs/NotificationRulesApi.md#delete_all_notification_rules) | **DELETE** /api/v1/notificationRules | Delete all notification rules
*FinapiApi::NotificationRulesApi* | [**delete_notification_rule**](docs/NotificationRulesApi.md#delete_notification_rule) | **DELETE** /api/v1/notificationRules/{id} | Delete a notification rule
*FinapiApi::NotificationRulesApi* | [**get_and_search_all_notification_rules**](docs/NotificationRulesApi.md#get_and_search_all_notification_rules) | **GET** /api/v1/notificationRules | Get and search all notification rules
*FinapiApi::NotificationRulesApi* | [**get_notification_rule**](docs/NotificationRulesApi.md#get_notification_rule) | **GET** /api/v1/notificationRules/{id} | Get a notification rule
*FinapiApi::PaymentsApi* | [**get_payments**](docs/PaymentsApi.md#get_payments) | **GET** /api/v1/payments | Get payments
*FinapiApi::SecuritiesApi* | [**get_and_search_all_securities**](docs/SecuritiesApi.md#get_and_search_all_securities) | **GET** /api/v1/securities | Get and search all securities
*FinapiApi::SecuritiesApi* | [**get_multiple_securities**](docs/SecuritiesApi.md#get_multiple_securities) | **GET** /api/v1/securities/{ids} | Get multiple securities
*FinapiApi::SecuritiesApi* | [**get_security**](docs/SecuritiesApi.md#get_security) | **GET** /api/v1/securities/{id} | Get a security
*FinapiApi::TransactionsApi* | [**delete_all_transactions**](docs/TransactionsApi.md#delete_all_transactions) | **DELETE** /api/v1/transactions | Delete all transactions
*FinapiApi::TransactionsApi* | [**delete_transaction**](docs/TransactionsApi.md#delete_transaction) | **DELETE** /api/v1/transactions/{id} | Delete a transaction
*FinapiApi::TransactionsApi* | [**edit_multiple_transactions**](docs/TransactionsApi.md#edit_multiple_transactions) | **PATCH** /api/v1/transactions | Edit multiple transactions
*FinapiApi::TransactionsApi* | [**edit_multiple_transactions_deprecated**](docs/TransactionsApi.md#edit_multiple_transactions_deprecated) | **PATCH** /api/v1/transactions/{ids} | Edit multiple transactions (DEPRECATED)
*FinapiApi::TransactionsApi* | [**edit_transaction**](docs/TransactionsApi.md#edit_transaction) | **PATCH** /api/v1/transactions/{id} | Edit a transaction
*FinapiApi::TransactionsApi* | [**get_and_search_all_transactions**](docs/TransactionsApi.md#get_and_search_all_transactions) | **GET** /api/v1/transactions | Get and search all transactions
*FinapiApi::TransactionsApi* | [**get_multiple_transactions**](docs/TransactionsApi.md#get_multiple_transactions) | **GET** /api/v1/transactions/{ids} | Get multiple transactions
*FinapiApi::TransactionsApi* | [**get_transaction**](docs/TransactionsApi.md#get_transaction) | **GET** /api/v1/transactions/{id} | Get a transaction
*FinapiApi::TransactionsApi* | [**restore_transaction**](docs/TransactionsApi.md#restore_transaction) | **POST** /api/v1/transactions/{id}/restore | Restore a transaction
*FinapiApi::TransactionsApi* | [**split_transaction**](docs/TransactionsApi.md#split_transaction) | **POST** /api/v1/transactions/{id}/split | Split a transaction
*FinapiApi::TransactionsApi* | [**trigger_categorization**](docs/TransactionsApi.md#trigger_categorization) | **POST** /api/v1/transactions/triggerCategorization | Trigger categorization
*FinapiApi::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /api/v1/users | Create a new user
*FinapiApi::UsersApi* | [**delete_authorized_user**](docs/UsersApi.md#delete_authorized_user) | **DELETE** /api/v1/users | Delete the authorized user
*FinapiApi::UsersApi* | [**delete_unverified_user**](docs/UsersApi.md#delete_unverified_user) | **DELETE** /api/v1/users/{userId} | Delete an unverified user
*FinapiApi::UsersApi* | [**edit_authorized_user**](docs/UsersApi.md#edit_authorized_user) | **PATCH** /api/v1/users | Edit the authorized user
*FinapiApi::UsersApi* | [**execute_password_change**](docs/UsersApi.md#execute_password_change) | **POST** /api/v1/users/executePasswordChange | Execute password change
*FinapiApi::UsersApi* | [**get_authorized_user**](docs/UsersApi.md#get_authorized_user) | **GET** /api/v1/users | Get the authorized user
*FinapiApi::UsersApi* | [**get_verification_status**](docs/UsersApi.md#get_verification_status) | **GET** /api/v1/users/verificationStatus | Get a user's verification status
*FinapiApi::UsersApi* | [**request_password_change**](docs/UsersApi.md#request_password_change) | **POST** /api/v1/users/requestPasswordChange | Request password change
*FinapiApi::UsersApi* | [**verify_user**](docs/UsersApi.md#verify_user) | **POST** /api/v1/users/verify/{userId} | Verify a user
*FinapiApi::WebFormsApi* | [**get_web_form**](docs/WebFormsApi.md#get_web_form) | **GET** /api/v1/webForms/{id} | Get a web form


## Documentation for Models

 - [FinapiApi::AccessToken](docs/AccessToken.md)
 - [FinapiApi::Account](docs/Account.md)
 - [FinapiApi::AccountInterface](docs/AccountInterface.md)
 - [FinapiApi::AccountList](docs/AccountList.md)
 - [FinapiApi::AccountParams](docs/AccountParams.md)
 - [FinapiApi::BadCredentialsError](docs/BadCredentialsError.md)
 - [FinapiApi::Bank](docs/Bank.md)
 - [FinapiApi::BankConnection](docs/BankConnection.md)
 - [FinapiApi::BankConnectionInterface](docs/BankConnectionInterface.md)
 - [FinapiApi::BankConnectionList](docs/BankConnectionList.md)
 - [FinapiApi::BankConnectionOwner](docs/BankConnectionOwner.md)
 - [FinapiApi::BankConsent](docs/BankConsent.md)
 - [FinapiApi::BankInterface](docs/BankInterface.md)
 - [FinapiApi::BankInterfaceLoginField](docs/BankInterfaceLoginField.md)
 - [FinapiApi::BankList](docs/BankList.md)
 - [FinapiApi::CashFlow](docs/CashFlow.md)
 - [FinapiApi::CashFlowList](docs/CashFlowList.md)
 - [FinapiApi::CategorizationCheckResult](docs/CategorizationCheckResult.md)
 - [FinapiApi::CategorizationCheckResults](docs/CategorizationCheckResults.md)
 - [FinapiApi::Category](docs/Category.md)
 - [FinapiApi::CategoryList](docs/CategoryList.md)
 - [FinapiApi::CategoryParams](docs/CategoryParams.md)
 - [FinapiApi::ChangeClientCredentialsParams](docs/ChangeClientCredentialsParams.md)
 - [FinapiApi::CheckCategorizationData](docs/CheckCategorizationData.md)
 - [FinapiApi::CheckCategorizationTransactionData](docs/CheckCategorizationTransactionData.md)
 - [FinapiApi::ClearingAccountData](docs/ClearingAccountData.md)
 - [FinapiApi::ClientConfiguration](docs/ClientConfiguration.md)
 - [FinapiApi::ClientConfigurationParams](docs/ClientConfigurationParams.md)
 - [FinapiApi::ConnectInterfaceParams](docs/ConnectInterfaceParams.md)
 - [FinapiApi::DailyBalance](docs/DailyBalance.md)
 - [FinapiApi::DailyBalanceList](docs/DailyBalanceList.md)
 - [FinapiApi::DirectDebitOrderingResponse](docs/DirectDebitOrderingResponse.md)
 - [FinapiApi::EditBankConnectionParams](docs/EditBankConnectionParams.md)
 - [FinapiApi::EditCategoryParams](docs/EditCategoryParams.md)
 - [FinapiApi::ErrorDetails](docs/ErrorDetails.md)
 - [FinapiApi::ErrorMessage](docs/ErrorMessage.md)
 - [FinapiApi::ExecutePasswordChangeParams](docs/ExecutePasswordChangeParams.md)
 - [FinapiApi::ExecuteSepaDirectDebitParams](docs/ExecuteSepaDirectDebitParams.md)
 - [FinapiApi::ExecuteSepaMoneyTransferParams](docs/ExecuteSepaMoneyTransferParams.md)
 - [FinapiApi::IbanRule](docs/IbanRule.md)
 - [FinapiApi::IbanRuleList](docs/IbanRuleList.md)
 - [FinapiApi::IbanRuleParams](docs/IbanRuleParams.md)
 - [FinapiApi::IbanRulesParams](docs/IbanRulesParams.md)
 - [FinapiApi::IdentifierList](docs/IdentifierList.md)
 - [FinapiApi::IdentifiersParams](docs/IdentifiersParams.md)
 - [FinapiApi::ImportBankConnectionParams](docs/ImportBankConnectionParams.md)
 - [FinapiApi::KeywordRule](docs/KeywordRule.md)
 - [FinapiApi::KeywordRuleList](docs/KeywordRuleList.md)
 - [FinapiApi::KeywordRuleParams](docs/KeywordRuleParams.md)
 - [FinapiApi::KeywordRulesParams](docs/KeywordRulesParams.md)
 - [FinapiApi::Label](docs/Label.md)
 - [FinapiApi::LabelList](docs/LabelList.md)
 - [FinapiApi::LabelParams](docs/LabelParams.md)
 - [FinapiApi::LoginCredentialData](docs/LoginCredentialData.md)
 - [FinapiApi::LoginCredentialResource](docs/LoginCredentialResource.md)
 - [FinapiApi::MockAccountData](docs/MockAccountData.md)
 - [FinapiApi::MockBankConnectionUpdate](docs/MockBankConnectionUpdate.md)
 - [FinapiApi::MockBatchUpdateParams](docs/MockBatchUpdateParams.md)
 - [FinapiApi::MoneyTransferOrderingResponse](docs/MoneyTransferOrderingResponse.md)
 - [FinapiApi::MonthlyUserStats](docs/MonthlyUserStats.md)
 - [FinapiApi::MultiStepAuthentication](docs/MultiStepAuthentication.md)
 - [FinapiApi::NewTransaction](docs/NewTransaction.md)
 - [FinapiApi::NotificationRule](docs/NotificationRule.md)
 - [FinapiApi::NotificationRuleList](docs/NotificationRuleList.md)
 - [FinapiApi::NotificationRuleParams](docs/NotificationRuleParams.md)
 - [FinapiApi::PageableBankList](docs/PageableBankList.md)
 - [FinapiApi::PageableCategoryList](docs/PageableCategoryList.md)
 - [FinapiApi::PageableIbanRuleList](docs/PageableIbanRuleList.md)
 - [FinapiApi::PageableKeywordRuleList](docs/PageableKeywordRuleList.md)
 - [FinapiApi::PageableLabelList](docs/PageableLabelList.md)
 - [FinapiApi::PageablePaymentResources](docs/PageablePaymentResources.md)
 - [FinapiApi::PageableSecurityList](docs/PageableSecurityList.md)
 - [FinapiApi::PageableTransactionList](docs/PageableTransactionList.md)
 - [FinapiApi::PageableUserInfoList](docs/PageableUserInfoList.md)
 - [FinapiApi::Paging](docs/Paging.md)
 - [FinapiApi::PasswordChangingResource](docs/PasswordChangingResource.md)
 - [FinapiApi::Payment](docs/Payment.md)
 - [FinapiApi::PaymentExecutionResponse](docs/PaymentExecutionResponse.md)
 - [FinapiApi::PaypalTransactionData](docs/PaypalTransactionData.md)
 - [FinapiApi::RemoveInterfaceParams](docs/RemoveInterfaceParams.md)
 - [FinapiApi::RequestPasswordChangeParams](docs/RequestPasswordChangeParams.md)
 - [FinapiApi::RequestSepaDirectDebitParams](docs/RequestSepaDirectDebitParams.md)
 - [FinapiApi::RequestSepaMoneyTransferParams](docs/RequestSepaMoneyTransferParams.md)
 - [FinapiApi::Security](docs/Security.md)
 - [FinapiApi::SecurityList](docs/SecurityList.md)
 - [FinapiApi::SingleDirectDebitData](docs/SingleDirectDebitData.md)
 - [FinapiApi::SingleMoneyTransferRecipientData](docs/SingleMoneyTransferRecipientData.md)
 - [FinapiApi::SplitTransactionsParams](docs/SplitTransactionsParams.md)
 - [FinapiApi::SubTransactionParams](docs/SubTransactionParams.md)
 - [FinapiApi::TrainCategorizationData](docs/TrainCategorizationData.md)
 - [FinapiApi::TrainCategorizationTransactionData](docs/TrainCategorizationTransactionData.md)
 - [FinapiApi::Transaction](docs/Transaction.md)
 - [FinapiApi::TransactionList](docs/TransactionList.md)
 - [FinapiApi::TriggerCategorizationParams](docs/TriggerCategorizationParams.md)
 - [FinapiApi::TwoStepProcedure](docs/TwoStepProcedure.md)
 - [FinapiApi::UpdateBankConnectionParams](docs/UpdateBankConnectionParams.md)
 - [FinapiApi::UpdateMultipleTransactionsParams](docs/UpdateMultipleTransactionsParams.md)
 - [FinapiApi::UpdateResult](docs/UpdateResult.md)
 - [FinapiApi::UpdateTransactionsParams](docs/UpdateTransactionsParams.md)
 - [FinapiApi::User](docs/User.md)
 - [FinapiApi::UserCreateParams](docs/UserCreateParams.md)
 - [FinapiApi::UserIdentifiersList](docs/UserIdentifiersList.md)
 - [FinapiApi::UserIdentifiersParams](docs/UserIdentifiersParams.md)
 - [FinapiApi::UserInfo](docs/UserInfo.md)
 - [FinapiApi::UserUpdateParams](docs/UserUpdateParams.md)
 - [FinapiApi::VerificationStatusResource](docs/VerificationStatusResource.md)
 - [FinapiApi::WebForm](docs/WebForm.md)


## Documentation for Authorization


### finapi_auth

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /oauth/authorize
- **Scopes**: 
  - all: modify any sources

