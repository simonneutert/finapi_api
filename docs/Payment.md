# FinapiApi::Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Payment identifier | 
**account_id** | **Integer** | Identifier of the account to which this payment relates | 
**request_date** | **String** | Time of when this payment was requested, in the format &#39;YYYY-MM-DD HH:MM:SS.SSS&#39; (german time) | 
**execution_date** | **String** | Time of when this payment was executed, in the format &#39;YYYY-MM-DD HH:MM:SS.SSS&#39; (german time) | [optional] 
**type** | **String** | Payment type | 
**status** | **String** | Current payment status:&lt;br/&gt; &amp;bull; PENDING: means that this payment has been requested, but not yet executed.&lt;br/&gt; &amp;bull; SUCCESSFUL: means that this payment has been successfully executed.&lt;br/&gt; &amp;bull; NOT_SUCCESSFUL: means that this payment could not be executed successfully.&lt;br/&gt; &amp;bull; DISCARDED: means that this payment was discarded because another payment was requested for the same account before this payment was executed. | 
**bank_message** | **String** | Contains the bank&#39;s response to the execution of this payment. This field is not set until the payment gets executed. Note that even after the execution of the payment, the field might still not be set, if the bank did not send any response message. | [optional] 
**amount** | **Float** | Total money amount of the payment order(s), as absolute value | 
**order_count** | **Integer** | Total count of orders included in this payment | 


