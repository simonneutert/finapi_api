# FinapiApiClient::MockBankConnectionUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_connection_id** | **Integer** | Bank connection identifier | 
**simulate_bank_login_error** | **BOOLEAN** | Whether to simulate the case that the update fails due to incorrect banking credentials. Note that there is no real communication to any bank server involved, so you won&#39;t lock your accounts when enabling this flag. Default value is &#39;false&#39;. | [optional] [default to false]
**mock_accounts_data** | [**Array&lt;MockAccountData&gt;**](MockAccountData.md) | Mock accounts data. Note that for accounts that exist in a bank connection but that you do not specify in this list, the service will act like those accounts are not received by the bank servers. This means that any accounts that you do not specify here will be marked as deprecated. If you do not specify this list at all, all accounts in the bank connection will be marked as deprecated. | [optional] 


