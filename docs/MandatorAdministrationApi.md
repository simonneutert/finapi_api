# FinapiApiClient::MandatorAdministrationApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_client_credentials**](MandatorAdministrationApi.md#change_client_credentials) | **POST** /api/v1/mandatorAdmin/changeClientCredentials | Change client credentials
[**create_iban_rules**](MandatorAdministrationApi.md#create_iban_rules) | **POST** /api/v1/mandatorAdmin/ibanRules | Create IBAN rules
[**create_keyword_rules**](MandatorAdministrationApi.md#create_keyword_rules) | **POST** /api/v1/mandatorAdmin/keywordRules | Create keyword rules
[**delete_iban_rules**](MandatorAdministrationApi.md#delete_iban_rules) | **POST** /api/v1/mandatorAdmin/ibanRules/delete | Delete IBAN rules
[**delete_keyword_rules**](MandatorAdministrationApi.md#delete_keyword_rules) | **POST** /api/v1/mandatorAdmin/keywordRules/delete | Delete keyword rules
[**delete_users**](MandatorAdministrationApi.md#delete_users) | **POST** /api/v1/mandatorAdmin/deleteUsers | Delete users
[**get_iban_rule_list**](MandatorAdministrationApi.md#get_iban_rule_list) | **GET** /api/v1/mandatorAdmin/ibanRules | Get IBAN rules
[**get_keyword_rule_list**](MandatorAdministrationApi.md#get_keyword_rule_list) | **GET** /api/v1/mandatorAdmin/keywordRules | Get keyword rules
[**get_user_list**](MandatorAdministrationApi.md#get_user_list) | **GET** /api/v1/mandatorAdmin/getUserList | Get user list


# **change_client_credentials**
> change_client_credentials(body)

Change client credentials

Change the client_secret for any of your clients, including the mandator admin client. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client'>mandator admin client</a>'s access_token. <br/><br/>NOTES:<br/>&bull; When you change a client's secret, then all of its existing access tokens will be revoked. User access tokens are not affected.<br/>&bull; finAPI is storing client secrets with a one-way encryption. A lost client secret can NOT be recovered.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::ChangeClientCredentialsParams.new # ChangeClientCredentialsParams | Parameters for changing client credentials


begin
  #Change client credentials
  api_instance.change_client_credentials(body)
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->change_client_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChangeClientCredentialsParams**](ChangeClientCredentialsParams.md)| Parameters for changing client credentials | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_iban_rules**
> IbanRuleList create_iban_rules(body)

Create IBAN rules

This service can be used to define IBAN rules for finAPI's transaction categorization system. The transaction categorization is run automatically whenever new transactions are imported, as well as when you call the services 'Check categorization' or 'Trigger categorization'. <br/><br/>An IBAN rule maps an IBAN to a certain category. finAPI's categorization system will pick the category as a candidate for any transaction whose counterpart's account matches the IBAN. It is not guaranteed though that this candidate will actually be applied, as there could be other categorization rules that have higher priority or that are an even better match for the transaction.<br/><br/>Note that the rules that you define here will be applied to all of your users. They have higher priority than finAPI's default categorization rules, but lower priority than user-specific rules (User-specific rules are created implicitly whenever a category is manually assigned to a transaction via the PATCH /transactions services). IBAN rules have a higher priority than keyword rules (see the 'Create keyword rules' service).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::IbanRulesParams.new # IbanRulesParams | IBAN rule definitions


begin
  #Create IBAN rules
  result = api_instance.create_iban_rules(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->create_iban_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IbanRulesParams**](IbanRulesParams.md)| IBAN rule definitions | 

### Return type

[**IbanRuleList**](IbanRuleList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_keyword_rules**
> KeywordRuleList create_keyword_rules(body)

Create keyword rules

This service can be used to define keyword rules for finAPI's transaction categorization system. The transaction categorization is run automatically whenever new transactions are imported, as well as when you call the services 'Check categorization' or 'Trigger categorization'. <br/><br/>A keyword rule maps a set of keywords to a certain category. finAPI's categorization system will pick the category as a candidate for any transaction that contains at least one of the defined keywords in its purpose or counterpart information. It is not guaranteed though that this candidate will actually be applied, as there could be other categorization rules that have higher priority or that are an even better match for the transaction. If there are multiple keyword rules that match a transaction, finAPI will pick the one with the highest count of matched keywords.<br/><br/>Note that the rules that you define here will be applied to all of your users. They have higher priority than finAPI's default categorization rules, but lower priority than user-specific rules (User-specific rules are created implicitly whenever a category is manually assigned to a transaction via the PATCH /transactions services). Keyword rules have a lower priority than IBAN rules (see the 'Create IBAN rules' service).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::KeywordRulesParams.new # KeywordRulesParams | Keyword rule definitions


begin
  #Create keyword rules
  result = api_instance.create_keyword_rules(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->create_keyword_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KeywordRulesParams**](KeywordRulesParams.md)| Keyword rule definitions | 

### Return type

[**KeywordRuleList**](KeywordRuleList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_iban_rules**
> IdentifierList delete_iban_rules(body)

Delete IBAN rules

Delete one or multiple IBAN rules that you have previously created via the 'Create IBAN rules' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::IdentifiersParams.new # IdentifiersParams | List of IBAN rules identifiers.The maximum number of identifiers is 100.


begin
  #Delete IBAN rules
  result = api_instance.delete_iban_rules(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->delete_iban_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdentifiersParams**](IdentifiersParams.md)| List of IBAN rules identifiers.The maximum number of identifiers is 100. | 

### Return type

[**IdentifierList**](IdentifierList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_keyword_rules**
> IdentifierList delete_keyword_rules(body)

Delete keyword rules

Delete one or multiple keyword rules that you have previously created via the 'Create keyword rules' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::IdentifiersParams.new # IdentifiersParams | List of keyword rule identifiers.The maximum number of identifiers is 100.


begin
  #Delete keyword rules
  result = api_instance.delete_keyword_rules(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->delete_keyword_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdentifiersParams**](IdentifiersParams.md)| List of keyword rule identifiers.The maximum number of identifiers is 100. | 

### Return type

[**IdentifierList**](IdentifierList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_users**
> UserIdentifiersList delete_users(body)

Delete users

Delete one or several users, which are specified by a given list of identifiers. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token. <br/><br/><b>NOTE</b>: finAPI may fail to delete one (or several, or all) of the specified users. A user cannot get deleted when his data is currently locked by an internal process (for instance, update of a bank connection or transactions categorization). The response contains the identifiers of all users that could not get deleted, and all users that could get deleted, separated in two lists. The mandator admin client can retry the request at a later time for the users who could not get deleted.<br/> Note that non-existing user identifiers will be ignored entirely, meaning that those identifiers will not appear in the response at all.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

body = FinapiApiClient::UserIdentifiersParams.new # UserIdentifiersParams | List of user identifiers


begin
  #Delete users
  result = api_instance.delete_users(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->delete_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserIdentifiersParams**](UserIdentifiersParams.md)| List of user identifiers | 

### Return type

[**UserIdentifiersList**](UserIdentifiersList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_iban_rule_list**
> PageableIbanRuleList get_iban_rule_list(opts)

Get IBAN rules

Returns all IBAN-based categorization rules that you have defined for your users via the 'Create IBAN rules' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

opts = { 
  page: 1, # Integer | Result page that you want to retrieve
  per_page: 20 # Integer | Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
}

begin
  #Get IBAN rules
  result = api_instance.get_iban_rule_list(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->get_iban_rule_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Result page that you want to retrieve | [optional] [default to 1]
 **per_page** | **Integer**| Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes. | [optional] [default to 20]

### Return type

[**PageableIbanRuleList**](PageableIbanRuleList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_keyword_rule_list**
> PageableKeywordRuleList get_keyword_rule_list(opts)

Get keyword rules

Returns all keyword-based categorization rules that you have defined for your users via the 'Create keyword rules' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

opts = { 
  page: 1, # Integer | Result page that you want to retrieve
  per_page: 20 # Integer | Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
}

begin
  #Get keyword rules
  result = api_instance.get_keyword_rule_list(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->get_keyword_rule_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Result page that you want to retrieve | [optional] [default to 1]
 **per_page** | **Integer**| Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes. | [optional] [default to 20]

### Return type

[**PageableKeywordRuleList**](PageableKeywordRuleList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_user_list**
> PageableUserInfoList get_user_list(opts)

Get user list

<p>Get a list of the users of the mandator that is authorized by the access_token. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token. You can set optional search criteria to get only those users that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.</p><p>Note that the original user id is no longer available in finAPI once a user has been deleted. Because of this, the userId of deleted users will be a distorted version of the original userId. For example, if the deleted user's id was originally 'user', then this service will return 'uXXr' as the userId.</p>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::MandatorAdministrationApi.new

opts = { 
  min_registration_date: 'min_registration_date_example', # String | Lower bound for a user's registration date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'registrationDate' is equal to or later than the given date will be regarded.
  max_registration_date: 'max_registration_date_example', # String | Upper bound for a user's registration date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'registrationDate' is equal to or earlier than the given date will be regarded.
  min_deletion_date: 'min_deletion_date_example', # String | Lower bound for a user's deletion date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'deletionDate' is not null, and is equal to or later than the given date will be regarded.
  max_deletion_date: 'max_deletion_date_example', # String | Upper bound for a user's deletion date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'deletionDate' is null, or is equal to or earlier than the given date will be regarded.
  min_last_active_date: 'min_last_active_date_example', # String | Lower bound for a user's last active date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'lastActiveDate' is not null, and is equal to or later than the given date will be regarded.
  max_last_active_date: 'max_last_active_date_example', # String | Upper bound for a user's last active date, in the format 'YYYY-MM-DD' (e.g. '2016-01-01'). If specified, then only users whose 'lastActiveDate' is null, or is equal to or earlier than the given date will be regarded.
  include_monthly_stats: false, # BOOLEAN | Whether to include the 'monthlyStats' for the returned users. If not specified, then the field defaults to 'false'.
  monthly_stats_start_date: 'monthly_stats_start_date_example', # String | Minimum bound for the monthly stats (=oldest month that should be included). Must be passed in the format 'YYYY-MM'. If not specified, then the monthly stats will go back up to the first month in which the user existed (date of the user's registration). Note that this field is only regarded if 'includeMonthlyStats' = true.
  monthly_stats_end_date: 'monthly_stats_end_date_example', # String | Maximum bound for the monthly stats (=latest month that should be included). Must be passed in the format 'YYYY-MM'. If not specified, then the monthly stats will go up to either the current month (for active users), or up to the month of deletion (for deleted users). Note that this field is only regarded if  'includeMonthlyStats' = true.
  min_bank_connection_count_in_monthly_stats: 0, # Integer | A value of X means that the service will return only those users which had at least X bank connections imported at any time within the returned monthly stats set. This field is only regarded when 'includeMonthlyStats' is set to 'true'. The default value for this field is 0.
  is_deleted: true, # BOOLEAN | If NOT specified, then the service will regard both active and deleted users in the search. If set to 'true', then ONLY deleted users will be regarded. If set to 'false', then ONLY active users will be regarded.
  is_locked: true, # BOOLEAN | If NOT specified, then the service will regard both locked and not locked users in the search. If set to 'true', then ONLY locked users will be regarded. If set to 'false', then ONLY not locked users will be regarded.
  page: 1, # Integer | Result page that you want to retrieve
  per_page: 20, # Integer | Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
  order: ['order_example'] # Array<String> | Determines the order of the results. You can order the results by 'userId'. The default order for this service is 'userId,asc'. The general format is: 'property[,asc|desc]', with 'asc' being the default value. 
}

begin
  #Get user list
  result = api_instance.get_user_list(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling MandatorAdministrationApi->get_user_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_registration_date** | **String**| Lower bound for a user&#39;s registration date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;registrationDate&#39; is equal to or later than the given date will be regarded. | [optional] 
 **max_registration_date** | **String**| Upper bound for a user&#39;s registration date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;registrationDate&#39; is equal to or earlier than the given date will be regarded. | [optional] 
 **min_deletion_date** | **String**| Lower bound for a user&#39;s deletion date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;deletionDate&#39; is not null, and is equal to or later than the given date will be regarded. | [optional] 
 **max_deletion_date** | **String**| Upper bound for a user&#39;s deletion date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;deletionDate&#39; is null, or is equal to or earlier than the given date will be regarded. | [optional] 
 **min_last_active_date** | **String**| Lower bound for a user&#39;s last active date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;lastActiveDate&#39; is not null, and is equal to or later than the given date will be regarded. | [optional] 
 **max_last_active_date** | **String**| Upper bound for a user&#39;s last active date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only users whose &#39;lastActiveDate&#39; is null, or is equal to or earlier than the given date will be regarded. | [optional] 
 **include_monthly_stats** | **BOOLEAN**| Whether to include the &#39;monthlyStats&#39; for the returned users. If not specified, then the field defaults to &#39;false&#39;. | [optional] [default to false]
 **monthly_stats_start_date** | **String**| Minimum bound for the monthly stats (&#x3D;oldest month that should be included). Must be passed in the format &#39;YYYY-MM&#39;. If not specified, then the monthly stats will go back up to the first month in which the user existed (date of the user&#39;s registration). Note that this field is only regarded if &#39;includeMonthlyStats&#39; &#x3D; true. | [optional] 
 **monthly_stats_end_date** | **String**| Maximum bound for the monthly stats (&#x3D;latest month that should be included). Must be passed in the format &#39;YYYY-MM&#39;. If not specified, then the monthly stats will go up to either the current month (for active users), or up to the month of deletion (for deleted users). Note that this field is only regarded if  &#39;includeMonthlyStats&#39; &#x3D; true. | [optional] 
 **min_bank_connection_count_in_monthly_stats** | **Integer**| A value of X means that the service will return only those users which had at least X bank connections imported at any time within the returned monthly stats set. This field is only regarded when &#39;includeMonthlyStats&#39; is set to &#39;true&#39;. The default value for this field is 0. | [optional] [default to 0]
 **is_deleted** | **BOOLEAN**| If NOT specified, then the service will regard both active and deleted users in the search. If set to &#39;true&#39;, then ONLY deleted users will be regarded. If set to &#39;false&#39;, then ONLY active users will be regarded. | [optional] 
 **is_locked** | **BOOLEAN**| If NOT specified, then the service will regard both locked and not locked users in the search. If set to &#39;true&#39;, then ONLY locked users will be regarded. If set to &#39;false&#39;, then ONLY not locked users will be regarded. | [optional] 
 **page** | **Integer**| Result page that you want to retrieve | [optional] [default to 1]
 **per_page** | **Integer**| Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes. | [optional] [default to 20]
 **order** | [**Array&lt;String&gt;**](String.md)| Determines the order of the results. You can order the results by &#39;userId&#39;. The default order for this service is &#39;userId,asc&#39;. The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value.  | [optional] 

### Return type

[**PageableUserInfoList**](PageableUserInfoList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



