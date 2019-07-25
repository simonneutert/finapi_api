# FinapiApi::UsersApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /api/v1/users | Create a new user
[**delete_authorized_user**](UsersApi.md#delete_authorized_user) | **DELETE** /api/v1/users | Delete the authorized user
[**delete_unverified_user**](UsersApi.md#delete_unverified_user) | **DELETE** /api/v1/users/{userId} | Delete an unverified user
[**edit_authorized_user**](UsersApi.md#edit_authorized_user) | **PATCH** /api/v1/users | Edit the authorized user
[**execute_password_change**](UsersApi.md#execute_password_change) | **POST** /api/v1/users/executePasswordChange | Execute password change
[**get_authorized_user**](UsersApi.md#get_authorized_user) | **GET** /api/v1/users | Get the authorized user
[**get_verification_status**](UsersApi.md#get_verification_status) | **GET** /api/v1/users/verificationStatus | Get a user&#39;s verification status
[**request_password_change**](UsersApi.md#request_password_change) | **POST** /api/v1/users/requestPasswordChange | Request password change
[**verify_user**](UsersApi.md#verify_user) | **POST** /api/v1/users/verify/{userId} | Verify a user


# **create_user**
> User create_user(body)

Create a new user

<p>Create a new user. Must pass your global (i.e. client) access_token. </p><p>This service returns the user's password as plain text. </p><p>The automatic update of the user's bank connections is disabled by default for any new user. User identifiers are regarded case-insensitive by finAPI.</p><p>Please note that finAPI generally has a restricted set of allowed characters for input fields. You can find the allowed characters <a href = \"https://finapi.zendesk.com/hc/en-us/articles/222013148-What-symbols-are-allowed-in-finAPI-\">here</a>. If a field does not explicitly specify a set of allowed characters, then these are the characters that are allowed for the field. Some fields may specify a different set of characters, in which case this will be documented for the field (like for the 'id' field in this service).</p>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

body = FinapiApi::UserCreateParams.new # UserCreateParams | User's details


begin
  #Create a new user
  result = api_instance.create_user(body)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCreateParams**](UserCreateParams.md)| User&#39;s details | 

### Return type

[**User**](User.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_authorized_user**
> delete_authorized_user

Delete the authorized user

Delete the authorized user. Must pass the user's access_token. ATTENTION: This deletes the user including all of his bank connections, accounts, balance data and transactions! THIS PROCESS CANNOT BE UNDONE! Note that a user cannot get deleted while any of his bank connections are currently busy (in the process of import, update, or transactions categorization). <p>Note: finAPI will send a notification about the deletion of the user to each of your clients that has a user synchronization callback URL set in its configuration. This also includes the client that is performing this request.</p>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

begin
  #Delete the authorized user
  api_instance.delete_authorized_user
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->delete_authorized_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_unverified_user**
> delete_unverified_user(user_id)

Delete an unverified user

Delete an unverified user. Must pass your global (i.e. client) access_token.<br/><br/>Notes:<br/>&bull; Unverified users can only exist if the field 'isUserAutoVerificationEnabled' (see Client Configuration Resource) is set to 'false' (or had been false at some point in the past).<br/>&bull; finAPI will send a notification about the deletion of the user to each of your clients that has a user synchronization callback URL set in its configuration. This also includes the client that is performing this request.<br/>&bull; finAPI regards user identifiers case-insensitive.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

user_id = 'user_id_example' # String | 


begin
  #Delete an unverified user
  api_instance.delete_unverified_user(user_id)
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->delete_unverified_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **edit_authorized_user**
> User edit_authorized_user(body)

Edit the authorized user

Edit the authorized user's data and settings. Must pass the user's access_token. Pass an empty string (but not null) to unset either the email or phone number. At least one field must have a non-null value in the request body. This service returns the user's password as 'XXXXX'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

body = FinapiApi::UserUpdateParams.new # UserUpdateParams | User's details


begin
  #Edit the authorized user
  result = api_instance.edit_authorized_user(body)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->edit_authorized_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserUpdateParams**](UserUpdateParams.md)| User&#39;s details | 

### Return type

[**User**](User.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **execute_password_change**
> execute_password_change(opts)

Execute password change

Change the password of a user. Must pass your global (i.e. client) access_token.<br/><br/>Note: When changing the password of a user, all tokens that have been handed out for that user (for whatever client) will be revoked! Also note that finAPI regards user identifiers case-insensitive.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

opts = { 
  body: FinapiApi::ExecutePasswordChangeParams.new # ExecutePasswordChangeParams | 
}

begin
  #Execute password change
  api_instance.execute_password_change(opts)
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->execute_password_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExecutePasswordChangeParams**](ExecutePasswordChangeParams.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_authorized_user**
> User get_authorized_user

Get the authorized user

Get the authorized user's data. Must pass the user's access_token. Only the authorized user can get his data, i.e. his access_token must be used. This service returns the user's password as 'XXXXX'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

begin
  #Get the authorized user
  result = api_instance.get_authorized_user
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->get_authorized_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_verification_status**
> VerificationStatusResource get_verification_status(user_id)

Get a user's verification status

Get the verification status of the requested user. Must pass your global (i.e. client) access_token. Note that finAPI regards user identifiers case-insensitive.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

user_id = 'user_id_example' # String | User's identifier


begin
  #Get a user's verification status
  result = api_instance.get_verification_status(user_id)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->get_verification_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User&#39;s identifier | 

### Return type

[**VerificationStatusResource**](VerificationStatusResource.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **request_password_change**
> PasswordChangingResource request_password_change(opts)

Request password change

Request password change for a user. Must pass your global (i.e. client) access_token. Note that finAPI regards user identifiers case-insensitive.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

opts = { 
  body: FinapiApi::RequestPasswordChangeParams.new # RequestPasswordChangeParams | 
}

begin
  #Request password change
  result = api_instance.request_password_change(opts)
  p result
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->request_password_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RequestPasswordChangeParams**](RequestPasswordChangeParams.md)|  | [optional] 

### Return type

[**PasswordChangingResource**](PasswordChangingResource.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **verify_user**
> verify_user(user_id)

Verify a user

Verify a user. User verification is only required when your client does not have auto-verification enabled (see field 'isUserAutoVerificationEnabled' in Client Configuration Resource). Must pass your global (i.e. client) access_token. Note that finAPI regards user identifiers case-insensitive.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApi.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApi::UsersApi.new

user_id = 'user_id_example' # String | User's identifier


begin
  #Verify a user
  api_instance.verify_user(user_id)
rescue FinapiApi::ApiError => e
  puts "Exception when calling UsersApi->verify_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User&#39;s identifier | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



