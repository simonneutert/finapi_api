# FinapiApiClient::BankInterfaceLoginField

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Contains a German label for the input field that you should provide to the user. Also, these labels are used to identify login fields on the API-level, when you pass credentials to the service. | 
**is_secret** | **BOOLEAN** | Whether this field has to be treated as a secret. In this case your application should use a password input field instead of a cleartext field. | 
**is_volatile** | **BOOLEAN** | Whether this field depicts a credential that is volatile. If a field is volatile, it means that the value for the field, as provided by the user, is usually valid only for a single authentication, and is then invalidated on bank-side. If a bank uses volatile login credentials, it is strongly inadvisable to store the credentials in finAPI, as stored credentials will not work for future authentications. | 


