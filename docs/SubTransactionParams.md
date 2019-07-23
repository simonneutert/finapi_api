# FinapiApiClient::SubTransactionParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Amount | 
**category_id** | **Integer** | Category identifier. If not specified, the original transaction&#39;s category will be applied. If you explicitly want the sub-transaction to have no category, then pass this field with value &#39;0&#39; (zero). | [optional] 
**purpose** | **String** | Purpose. Maximum length is 2000. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**counterpart** | **String** | Counterpart. Maximum length is 80. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**counterpart_account_number** | **String** | Counterpart account number. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**counterpart_iban** | **String** | Counterpart IBAN. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**counterpart_bic** | **String** | Counterpart BIC. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**counterpart_blz** | **String** | Counterpart BLZ. If not specified, the original transaction&#39;s value will be applied. | [optional] 
**label_ids** | **Array&lt;Integer&gt;** | List of connected labels. Note that when this field is not specified, then the labels of the original transaction will NOT get applied to the sub-transaction. Instead, the sub-transaction will have no labels assigned to it. | [optional] 


