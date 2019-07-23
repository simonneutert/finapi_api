# FinapiApiClient::LabelsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_label**](LabelsApi.md#create_label) | **POST** /api/v1/labels | Create a new label
[**delete_all_labels**](LabelsApi.md#delete_all_labels) | **DELETE** /api/v1/labels | Delete all labels
[**delete_label**](LabelsApi.md#delete_label) | **DELETE** /api/v1/labels/{id} | Delete a label
[**edit_label**](LabelsApi.md#edit_label) | **PATCH** /api/v1/labels/{id} | Edit a label
[**get_and_search_all_labels**](LabelsApi.md#get_and_search_all_labels) | **GET** /api/v1/labels | Get and search all labels
[**get_label**](LabelsApi.md#get_label) | **GET** /api/v1/labels/{id} | Get a label
[**get_multiple_labels**](LabelsApi.md#get_multiple_labels) | **GET** /api/v1/labels/{ids} | Get multiple labels


# **create_label**
> Label create_label(body)

Create a new label

Create a new label for a specific user. Must pass the new label's name and the user's access_token.<br/><br/>Users can create labels to flag transactions (see method PATCH /transactions), with the goal of collecting and getting an overview of all transactions of a certain 'type'. In this sense, labels are similar to transaction categories. However, labels are supposed to depict more of an implicit meaning of a transaction. For instance, a user might want to assign a flag to a transaction that reminds him that he can offset it against tax. At the same time, the category of the transactions might be something like 'insurance', which is a more 'fact-based', or 'objective' way of typing the transaction. Despite this semantic difference between categories and labels, there is also the difference that a transaction can be assigned multiple labels at the same time (while in contrast it can have just a single category).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

body = FinapiApiClient::LabelParams.new # LabelParams | Label's name


begin
  #Create a new label
  result = api_instance.create_label(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->create_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LabelParams**](LabelParams.md)| Label&#39;s name | 

### Return type

[**Label**](Label.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_all_labels**
> IdentifierList delete_all_labels

Delete all labels

Delete all labels of the user that is authorized by the access_token. Must pass the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

begin
  #Delete all labels
  result = api_instance.delete_all_labels
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->delete_all_labels: #{e}"
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



# **delete_label**
> delete_label(id)

Delete a label

Delete a single label of the user that is authorized by the access_token. Must pass the label's identifier and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

id = 789 # Integer | Identifier of the label to delete


begin
  #Delete a label
  api_instance.delete_label(id)
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->delete_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of the label to delete | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **edit_label**
> Label edit_label(id, body)

Edit a label

Change the name of a label of the user that is authorized by the access_token. Must pass the label's identifier, the label's new name and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

id = 789 # Integer | Label's identifier

body = FinapiApiClient::LabelParams.new # LabelParams | Label's new name


begin
  #Edit a label
  result = api_instance.edit_label(id, body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->edit_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Label&#39;s identifier | 
 **body** | [**LabelParams**](LabelParams.md)| Label&#39;s new name | 

### Return type

[**Label**](Label.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_and_search_all_labels**
> PageableLabelList get_and_search_all_labels(opts)

Get and search all labels

Get labels of the user that is authorized by the access_token. Must pass the user's access_token. You can set optional search criteria to get only those labels that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

opts = { 
  ids: [56], # Array<Integer> | A comma-separated list of label identifiers. If specified, then only labels whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
  search: 'search_example', # String | If specified, then only those labels will be contained in the result whose 'name' contains the given search string (the matching works case-insensitive). If no labels contain the search string in their name, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the name in order for a label to get included into the result.
  page: 1, # Integer | Result page that you want to retrieve
  per_page: 20, # Integer | Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
  order: ['order_example'] # Array<String> | Determines the order of the results. You can order the results by 'id' or 'name'. The default order for all services is 'id,asc'. Since both fields (id and name) are unique, ordering by multiple fields is pointless. The general format is: 'property[,asc|desc]', with 'asc' being the default value. 
}

begin
  #Get and search all labels
  result = api_instance.get_and_search_all_labels(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->get_and_search_all_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma-separated list of label identifiers. If specified, then only labels whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000. | [optional] 
 **search** | **String**| If specified, then only those labels will be contained in the result whose &#39;name&#39; contains the given search string (the matching works case-insensitive). If no labels contain the search string in their name, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the name in order for a label to get included into the result. | [optional] 
 **page** | **Integer**| Result page that you want to retrieve | [optional] [default to 1]
 **per_page** | **Integer**| Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes. | [optional] [default to 20]
 **order** | [**Array&lt;String&gt;**](String.md)| Determines the order of the results. You can order the results by &#39;id&#39; or &#39;name&#39;. The default order for all services is &#39;id,asc&#39;. Since both fields (id and name) are unique, ordering by multiple fields is pointless. The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value.  | [optional] 

### Return type

[**PageableLabelList**](PageableLabelList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_label**
> Label get_label(id)

Get a label

Get a single label of the user that is authorized by the access_token. Must pass the label's identifier and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

id = 789 # Integer | Identifier of requested label


begin
  #Get a label
  result = api_instance.get_label(id)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->get_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of requested label | 

### Return type

[**Label**](Label.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_multiple_labels**
> LabelList get_multiple_labels(ids)

Get multiple labels

Get a list of multiple labels of the user that is authorized by the access_token.Must pass the labels' identifiers and the user's access_token. Identifiers that do not exist or do not relate to the authorized user will not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list). WARNING: This service is deprecated and will be removed at some point. If you want to get multiple labels, please instead use the service 'Get all labels' and pass a comma-separated list of identifiers as a parameter 'ids'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::LabelsApi.new

ids = [56] # Array<Integer> | Comma-separated list of identifiers of requested labels


begin
  #Get multiple labels
  result = api_instance.get_multiple_labels(ids)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling LabelsApi->get_multiple_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| Comma-separated list of identifiers of requested labels | 

### Return type

[**LabelList**](LabelList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



