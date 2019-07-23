# FinapiApiClient::NewTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Amount. Required. | 
**purpose** | **String** | Purpose. Any symbols are allowed. Maximum length is 2000. Optional. Default value: null. | [optional] 
**counterpart** | **String** | Counterpart. Any symbols are allowed. Maximum length is 80. Optional. Default value: null. | [optional] 
**counterpart_iban** | **String** | Counterpart IBAN. Optional. Default value: null. | [optional] 
**counterpart_blz** | **String** | Counterpart BLZ. Optional. Default value: null. | [optional] 
**counterpart_bic** | **String** | Counterpart BIC. Optional. Default value: null. | [optional] 
**counterpart_account_number** | **String** | Counterpart account number. Maximum length is 34. Optional. Default value: null. | [optional] 
**booking_date** | **String** | Booking date in the format &#39;YYYY-MM-DD&#39;.&lt;br/&gt;&lt;br/&gt;If the date lies back more than 10 days from the booking date of the latest transaction that currently exists in the account, then this transaction will be ignored and not imported. If the date depicts a date in the future, then finAPI will deal with it the same way as it does with real transactions during a real update (see fields &#39;bankBookingDate&#39; and &#39;finapiBookingDate&#39; in the Transaction Resource for explanation).&lt;br/&gt;&lt;br/&gt;This field is optional, default value is the current date. | [optional] 
**value_date** | **String** | Value date in the format &#39;YYYY-MM-DD&#39;. Optional. Default value: Same as the booking date. | [optional] 


