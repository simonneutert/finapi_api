# FinapiApiClient::NotificationRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Notification rule identifier | 
**trigger_event** | **String** | Trigger event type | 
**params** | **Hash&lt;String, String&gt;** | Additional parameters that are specific to the trigger event type. Please refer to the documentation for details. | [optional] 
**callback_handle** | **String** | The string that finAPI includes into the notifications that it sends based on this rule. | [optional] 
**include_details** | **BOOLEAN** | Whether the notification messages that will be sent based on this rule contain encrypted detailed data or not | 


