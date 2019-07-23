# FinapiApiClient::WebFormsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_web_form**](WebFormsApi.md#get_web_form) | **GET** /api/v1/webForms/{id} | Get a web form


# **get_web_form**
> WebForm get_web_form(id)

Get a web form

Get a web form of the user that is authorized by the access_token. Must pass the web form's identifier and the user's access_token. <br/><br/>Note that every web form resource is automatically removed from the finAPI system after 24 hours after its creation.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::WebFormsApi.new

id = 789 # Integer | Identifier of web form


begin
  #Get a web form
  result = api_instance.get_web_form(id)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling WebFormsApi->get_web_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of web form | 

### Return type

[**WebForm**](WebForm.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



