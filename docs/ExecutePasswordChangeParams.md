# FinapiApiClient::ExecutePasswordChangeParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | User identifier | 
**password** | **String** | User&#39;s new password. Minimum length is 6, and maximum length is 36. | 
**password_change_token** | **String** | Decrypted password change token (the token that you received from the /users/requestPasswordChange service, decrypted with your data decryption key) | 


