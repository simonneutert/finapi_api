# FinapiApiClient::ClientConfigurationApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**edit_client_configuration**](ClientConfigurationApi.md#edit_client_configuration) | **PATCH** /api/v1/clientConfiguration | Edit client configuration
[**get_client_configuration**](ClientConfigurationApi.md#get_client_configuration) | **GET** /api/v1/clientConfiguration | Get client configuration


# **edit_client_configuration**
> ClientConfiguration edit_client_configuration(opts)

Edit client configuration

Edit your client's configuration. Must pass your global (i.e. client) access_token.<br/><br/> <b>NOTE</b>: When token validity periods are changed, this only applies to newly requested tokens, and does not change the expiration time of already existing tokens.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::ClientConfigurationApi.new

opts = { 
  body: FinapiApiClient::ClientConfigurationParams.new # ClientConfigurationParams | Client configuration parameters
}

begin
  #Edit client configuration
  result = api_instance.edit_client_configuration(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling ClientConfigurationApi->edit_client_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClientConfigurationParams**](ClientConfigurationParams.md)| Client configuration parameters | [optional] 

### Return type

[**ClientConfiguration**](ClientConfiguration.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_client_configuration**
> ClientConfiguration get_client_configuration

Get client configuration

Get your client's configuration. Must pass your global (i.e. client) access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::ClientConfigurationApi.new

begin
  #Get client configuration
  result = api_instance.get_client_configuration
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling ClientConfigurationApi->get_client_configuration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ClientConfiguration**](ClientConfiguration.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



