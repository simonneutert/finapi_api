# FinapiApiClient::ErrorDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Error message | [optional] 
**code** | **String** | Error code. See the documentation of the individual services for details about what values may be returned. | 
**type** | **String** | Error type. BUSINESS errors depict German error messages for the user, e.g. from a bank server. TECHNICAL errors depict internal errors. | 
**multi_step_authentication** | [**MultiStepAuthentication**](MultiStepAuthentication.md) | Multi-step authentication data; also known as 2-factor-authentication (2FA), or strong customer authentication (SCA). | [optional] 


