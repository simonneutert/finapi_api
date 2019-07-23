# FinapiApiClient::PaymentsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payments**](PaymentsApi.md#get_payments) | **GET** /api/v1/payments | Get payments


# **get_payments**
> PageablePaymentResources get_payments(opts)

Get payments

Get payments of the user that is authorized by the access_token. <p>Note: For requesting / executing payments, please refer to the 'Accounts' section of the API.</p>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::PaymentsApi.new

opts = { 
  ids: [56], # Array<Integer> | A comma-separated list of payment identifiers. If specified, then only payments whose identifier is matching any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
  account_ids: [56], # Array<Integer> | A comma-separated list of account identifiers. If specified, then only payments that relate to the given account(s) will be regarded. The maximum number of identifiers is 1000.
  min_amount: 8.14, # Float | If specified, then only those payments are regarded whose (absolute) total amount is equal or greater than the given amount will be regarded. The value must be a positive (absolute) amount.
  max_amount: 8.14, # Float | If specified, then only those payments are regarded whose (absolute) total amount is equal or less than the given amount will be regarded. Value must be a positive (absolute) amount.
  page: 1, # Integer | Result page that you want to retrieve
  per_page: 20, # Integer | Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
  order: ['order_example'] # Array<String> | Determines the order of the results. You can use the following fields for ordering the response: 'id', 'amount', 'requestDate' and 'executionDate'. The default order for all services is 'id,asc'.
}

begin
  #Get payments
  result = api_instance.get_payments(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma-separated list of payment identifiers. If specified, then only payments whose identifier is matching any of the given identifiers will be regarded. The maximum number of identifiers is 1000. | [optional] 
 **account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma-separated list of account identifiers. If specified, then only payments that relate to the given account(s) will be regarded. The maximum number of identifiers is 1000. | [optional] 
 **min_amount** | **Float**| If specified, then only those payments are regarded whose (absolute) total amount is equal or greater than the given amount will be regarded. The value must be a positive (absolute) amount. | [optional] 
 **max_amount** | **Float**| If specified, then only those payments are regarded whose (absolute) total amount is equal or less than the given amount will be regarded. Value must be a positive (absolute) amount. | [optional] 
 **page** | **Integer**| Result page that you want to retrieve | [optional] [default to 1]
 **per_page** | **Integer**| Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes. | [optional] [default to 20]
 **order** | [**Array&lt;String&gt;**](String.md)| Determines the order of the results. You can use the following fields for ordering the response: &#39;id&#39;, &#39;amount&#39;, &#39;requestDate&#39; and &#39;executionDate&#39;. The default order for all services is &#39;id,asc&#39;. | [optional] 

### Return type

[**PageablePaymentResources**](PageablePaymentResources.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



