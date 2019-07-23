# FinapiApiClient::BankConnectionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect_interface**](BankConnectionsApi.md#connect_interface) | **POST** /api/v1/bankConnections/connectInterface | Connect a new interface
[**delete_all_bank_connections**](BankConnectionsApi.md#delete_all_bank_connections) | **DELETE** /api/v1/bankConnections | Delete all bank connections
[**delete_bank_connection**](BankConnectionsApi.md#delete_bank_connection) | **DELETE** /api/v1/bankConnections/{id} | Delete a bank connection
[**edit_bank_connection**](BankConnectionsApi.md#edit_bank_connection) | **PATCH** /api/v1/bankConnections/{id} | Edit a bank connection
[**get_all_bank_connections**](BankConnectionsApi.md#get_all_bank_connections) | **GET** /api/v1/bankConnections | Get all bank connections
[**get_bank_connection**](BankConnectionsApi.md#get_bank_connection) | **GET** /api/v1/bankConnections/{id} | Get a bank connection
[**get_multiple_bank_connections**](BankConnectionsApi.md#get_multiple_bank_connections) | **GET** /api/v1/bankConnections/{ids} | Get multiple bank connections
[**import_bank_connection**](BankConnectionsApi.md#import_bank_connection) | **POST** /api/v1/bankConnections/import | Import a new bank connection
[**remove_interface**](BankConnectionsApi.md#remove_interface) | **POST** /api/v1/bankConnections/removeInterface | Remove an interface
[**update_bank_connection**](BankConnectionsApi.md#update_bank_connection) | **POST** /api/v1/bankConnections/update | Update a bank connection


# **connect_interface**
> BankConnection connect_interface(body)

Connect a new interface

Connects new interface to an existing bank connection for a specific user. Must pass the connection credentials and the user's access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/<id> service.<br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

body = FinapiApiClient::ConnectInterfaceParams.new # ConnectInterfaceParams | Connect interface parameters


begin
  #Connect a new interface
  result = api_instance.connect_interface(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->connect_interface: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectInterfaceParams**](ConnectInterfaceParams.md)| Connect interface parameters | 

### Return type

[**BankConnection**](BankConnection.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_all_bank_connections**
> IdentifierList delete_all_bank_connections

Delete all bank connections

Delete all bank connections of the user that is authorized by the access_token. Must pass the user's access_token.<br/><br/>Notes: <br/>- All notification rules that are connected to any specific bank connection will get deleted as well. <br/>- If at least one bank connection is busy (currently in the process of import, update, or transactions categorization), then this service will perform no action at all.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

begin
  #Delete all bank connections
  result = api_instance.delete_all_bank_connections
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->delete_all_bank_connections: #{e}"
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



# **delete_bank_connection**
> delete_bank_connection(id)

Delete a bank connection

Delete a single bank connection of the user that is authorized by the access_token, including all of its accounts and their transactions and balance data. Must pass the connection's identifier and the user's access_token.<br/><br/>Notes: <br/>- All notification rules that are connected to the bank connection will get adjusted so that they no longer have this connection listed. Notification rules that are connected to just this bank connection (and no other connection) will get deleted altogether. <br/>- A bank connection cannot get deleted while it is in the process of import, update, or transactions categorization.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

id = 789 # Integer | Identifier of the bank connection to delete


begin
  #Delete a bank connection
  api_instance.delete_bank_connection(id)
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->delete_bank_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of the bank connection to delete | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **edit_bank_connection**
> BankConnection edit_bank_connection(id, body)

Edit a bank connection

Edit bank connection data. Must pass the connection's identifier and the user's access_token.<br/><br/>Note that a bank connection's credentials cannot be changed while it is in the process of import, update, or transactions categorization.<br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

id = 789 # Integer | Identifier of the bank connection to change the parameters for

body = FinapiApiClient::EditBankConnectionParams.new # EditBankConnectionParams | New bank connection parameters


begin
  #Edit a bank connection
  result = api_instance.edit_bank_connection(id, body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->edit_bank_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of the bank connection to change the parameters for | 
 **body** | [**EditBankConnectionParams**](EditBankConnectionParams.md)| New bank connection parameters | 

### Return type

[**BankConnection**](BankConnection.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_all_bank_connections**
> BankConnectionList get_all_bank_connections(opts)

Get all bank connections

Get bank connections of the user that is authorized by the access_token. Must pass the user's access_token. You can set optional search criteria to get only those bank connections that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

opts = { 
  ids: [56] # Array<Integer> | A comma-separated list of bank connection identifiers. If specified, then only bank connections whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
}

begin
  #Get all bank connections
  result = api_instance.get_all_bank_connections(opts)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->get_all_bank_connections: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma-separated list of bank connection identifiers. If specified, then only bank connections whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000. | [optional] 

### Return type

[**BankConnectionList**](BankConnectionList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_bank_connection**
> BankConnection get_bank_connection(id)

Get a bank connection

Get a single bank connection of the user that is authorized by the access_token. Must pass the connection's identifier and the user's access_token.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

id = 789 # Integer | Identifier of requested bank connection


begin
  #Get a bank connection
  result = api_instance.get_bank_connection(id)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->get_bank_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Identifier of requested bank connection | 

### Return type

[**BankConnection**](BankConnection.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_multiple_bank_connections**
> BankConnectionList get_multiple_bank_connections(ids)

Get multiple bank connections

Get a list of multiple bank connections of the user that is authorized by the access_token. Must pass the connections' identifiers and the user's access_token. Connections whose identifiers do not exist or do not relate to the authorized user will not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list). WARNING: This service is deprecated and will be removed at some point. If you want to get multiple bank connections, please instead use the service 'Get all bank connections' and pass a comma-separated list of identifiers as a parameter 'ids'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

ids = [56] # Array<Integer> | Comma-separated list of identifiers of requested bank connections


begin
  #Get multiple bank connections
  result = api_instance.get_multiple_bank_connections(ids)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->get_multiple_bank_connections: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| Comma-separated list of identifiers of requested bank connections | 

### Return type

[**BankConnectionList**](BankConnectionList.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **import_bank_connection**
> BankConnection import_bank_connection(body)

Import a new bank connection

Imports a new bank connection for a specific user. Must pass the connection credentials and the user's access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/<id> service.<br/><br/>You can also import a \"demo connection\" which contains a single bank account with some pre-defined transactions. To import the demo connection, you need to pass the identifier of the \"finAPI Test Bank\". In case of demo connection import, any other fields besides the bank identifier can remain unset. The bankingUserId, bankingCustomerId, bankingPin, and storeSecrets fields will be stored if you pass them, however they will not be regarded when updating the demo connection (in other words: It doesn't matter what credentials you choose for the demo connection). Note however that if you want to import the demo connection multiple times for the same user, you must use a different bankingUserId and/or bankingCustomerId for each of the imports. Also note that the skipPositionsDownload flag is ignored for the demo bank connection, i.e. when importing the demo bank connection, you will always get the transactions for its account. You can enable multi-step authentication for the demo bank connection by setting the bank connection name to \"MSA\".<br/><br/><b>For a more in-depth understanding of the import process, please also read this article on our Dev Portal: <a href='https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts' target='_blank'>Import & Update of Bank Connections / Accounts</a></b><br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

body = FinapiApiClient::ImportBankConnectionParams.new # ImportBankConnectionParams | Import bank connection parameters


begin
  #Import a new bank connection
  result = api_instance.import_bank_connection(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->import_bank_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ImportBankConnectionParams**](ImportBankConnectionParams.md)| Import bank connection parameters | 

### Return type

[**BankConnection**](BankConnection.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **remove_interface**
> remove_interface(body)

Remove an interface

Remove an interface from bank connection and from all associated accounts in the bank connection. Notes: <br/>- An interface cannot get deleted while it is in the process of import or update.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

body = FinapiApiClient::RemoveInterfaceParams.new # RemoveInterfaceParams | Remove interface parameters


begin
  #Remove an interface
  api_instance.remove_interface(body)
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->remove_interface: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RemoveInterfaceParams**](RemoveInterfaceParams.md)| Remove interface parameters | 

### Return type

nil (empty response body)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_bank_connection**
> BankConnection update_bank_connection(body)

Update a bank connection

Update an existing bank connection of the user that is authorized by the access_token. Downloads and imports the current account balances and new transactions. Must pass the connection's identifier and the user's access_token. For more information about the processes of authentication, data download and transactions categorization, see POST /bankConnections/import. Note that supported two-step-procedures are updated as well. It may unset the current default two-step-procedure of the given bank connection (but only if this procedure is not supported anymore by the bank). You can also update the \"demo connection\" (in this case, the fields 'bankingPin', 'importNewAccounts', and 'skipPositionsDownload' will be ignored).<br/><br/>Note that you cannot trigger an update of a bank connection as long as there is still a previously triggered update running.<br/><br/><b>For a more in-depth understanding of the update process, please also read this article on our Dev Portal: <a href='https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts' target='_blank'>Import & Update of Bank Connections / Accounts</a></b><br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
FinapiApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: finapi_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FinapiApiClient::BankConnectionsApi.new

body = FinapiApiClient::UpdateBankConnectionParams.new # UpdateBankConnectionParams | Update bank connection parameters


begin
  #Update a bank connection
  result = api_instance.update_bank_connection(body)
  p result
rescue FinapiApiClient::ApiError => e
  puts "Exception when calling BankConnectionsApi->update_bank_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateBankConnectionParams**](UpdateBankConnectionParams.md)| Update bank connection parameters | 

### Return type

[**BankConnection**](BankConnection.md)

### Authorization

[finapi_auth](../README.md#finapi_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



