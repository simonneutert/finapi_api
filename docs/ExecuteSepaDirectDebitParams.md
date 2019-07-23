# FinapiApiClient::ExecuteSepaDirectDebitParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **Integer** | Identifier of the bank account that you want to transfer money to | 
**banking_tan** | **String** | Banking TAN that the user received from the bank for executing the direct debit order. The field is required if you are licensed to perform SEPA direct debits yourself. Otherwise, i.e. when finAPI&#39;s web form flow is required, the web form will deal with executing the service itself. | [optional] 


