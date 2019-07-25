# FinapiApi::NotificationRulesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_notification_rule**](NotificationRulesApi.md#create_notification_rule) | **POST** /api/v1/notificationRules | Create a new notification rule
[**delete_all_notification_rules**](NotificationRulesApi.md#delete_all_notification_rules) | **DELETE** /api/v1/notificationRules | Delete all notification rules
[**delete_notification_rule**](NotificationRulesApi.md#delete_notification_rule) | **DELETE** /api/v1/notificationRules/{id} | Delete a notification rule
[**get_and_search_all_notification_rules**](NotificationRulesApi.md#get_and_search_all_notification_rules) | **GET** /api/v1/notificationRules | Get and search all notification rules
[**get_notification_rule**](NotificationRulesApi.md#get_notification_rule) | **GET** /api/v1/notificationRules/{id} | Get a notification rule


# **create_notification_rule**
> NotificationRule create_notification_rule(body)

Create a new notification rule

Create a new notification rule for a specific user. Must pass the user's access_token.<br/><br/>Setting up notification rules for a user allows your client application to get notified about changes in the user's data, e.g. when new transactions were downloaded, an account's balance has changed, or the user's banking credentials are no longer correct. Note that currently, this feature is implemented only for finAPI's automatic batch update, i.e. notification rules are only relevant when the user has activated the automatic updates (and when the automatic batch update is activated in general for your client).<br/><br/>There are different kinds of notification rules. The kind of a rule is depicted by the 'triggerEvent'. The trigger event specifies what data you have to pass when creating a rule (specifically, the contents of the 'params' field), on which events finAPI will send notifications to your client application, as well as what data is contained in those notifications. The specifics of the different trigger events are documented in the following article on our Dev Portal: <a href='https://finapi.zendesk.com/hc/en-us/articles/232324608-How-to-create-notification-rules-and-receive-notifications' target='_blank'>How to create notification rules and receive notifications</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::NotificationRulesApi.new

body = FinapiApi::NotificationRuleParams.new # NotificationRuleParams | Notification rule parameters


begin
  #Create a new notification rule
  result = api_instance.create_notification_rule(body)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling NotificationRulesApi->create_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NotificationRuleParams**](NotificationRuleParams.md)| Notification rule parameters | 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_all_notification_rules**
> IdentifierList delete_all_notification_rules

Delete all notification rules

Delete all notification rules of the user that is authorized by the access_token. Must pass the user's access_token. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::NotificationRulesApi.new

begin
  #Delete all notification rules
  result = api_instance.delete_all_notification_rules
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling NotificationRulesApi->delete_all_notification_rules: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IdentifierList**](IdentifierList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_notification_rule**
> delete_notification_rule(id)

Delete a notification rule

Delete a single notification rule of the user that is authorized by the access_token. Must pass the notification rule's identifier and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::NotificationRulesApi.new

id = 789 # Integer | Identifier of the notification rule to delete


begin
  #Delete a notification rule
  api_instance.delete_notification_rule(id)
rescue FinapiApi::ApiError => e
  puts "Exception when calling NotificationRulesApi->delete_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of the notification rule to delete | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_and_search_all_notification_rules**
> NotificationRuleList get_and_search_all_notification_rules(opts)

Get and search all notification rules

Get notification rules of the user that is authorized by the access_token. Must pass the user's access_token. You can set optional search criteria to get only those notification rules that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::NotificationRulesApi.new

opts = { 
  ids: [56], # Array<Integer> | A comma-separated list of notification rule identifiers. If specified, then only notification rules whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
  trigger_event: 'trigger_event_example', # String | If specified, then only notification rules with given trigger event will be regarded.
  include_details: true # BOOLEAN | If specified, then only notification rules that include or not include details will be regarded.
}

begin
  #Get and search all notification rules
  result = api_instance.get_and_search_all_notification_rules(opts)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling NotificationRulesApi->get_and_search_all_notification_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma-separated list of notification rule identifiers. If specified, then only notification rules whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000. | [optional] 
 **trigger_event** | **String**| If specified, then only notification rules with given trigger event will be regarded. | [optional] 
 **include_details** | **BOOLEAN**| If specified, then only notification rules that include or not include details will be regarded. | [optional] 

### Return type

[**NotificationRuleList**](NotificationRuleList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_notification_rule**
> NotificationRule get_notification_rule(id)

Get a notification rule

Get a single notification rule of the user that is authorized by the access_token. Must pass the notification rule's identifier and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::NotificationRulesApi.new

id = 789 # Integer | Identifier of requested notification rule


begin
  #Get a notification rule
  result = api_instance.get_notification_rule(id)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling NotificationRulesApi->get_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of requested notification rule | 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



