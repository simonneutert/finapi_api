# FinapiApiClient::ConnectInterfaceParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_connection_id** | **Integer** | Bank connection identifier | 
**login_credentials** | [**Array&lt;LoginCredentialData&gt;**](LoginCredentialData.md) | Set of login credentials. Must be passed in combination with the &#39;interface&#39; field. | [optional] 
**store_secrets** | **BOOLEAN** | Whether to store the secret login fields and/or other authorization data that finAPI might receive from the bank. If the data is stored, then updates can be triggered without the involvement of the users, as long as the credentials remain valid and the bank consent has not expired. Default value is false.&lt;br/&gt;&lt;br/&gt;NOTES:&lt;br/&gt; - this field is ignored in case when the user will need to use finAPI&#39;s web form. The user will be able to decide whether to store the secrets or not in the web form, depending on the &#39;storeSecretsAvailableInWebForm&#39; setting (see Client Configuration). | [optional] [default to false]
**challenge_response** | **String** | Challenge response. This field should be set only when the previous attempt of calling the service failed with HTTP code 510, i.e. the bank sent a challenge for the user for an additional authentication. In this case, this field must contain the challenge response when re-triggering the service call. Note that in the context of finAPI&#39;s web form flow, finAPI will automatically deal with getting the challenge response from the user via the web form. | [optional] 
**two_step_procedure_id** | **String** | The bank-given ID of the two-step-procedure that should be used for connecting the interface. | [optional] 
**redirect_url** | **String** | Must be passed when the used interface has the property REDIRECT_APPROACH. The user will be redirected to the given URL from the bank&#39;s website after having entered his credentials. Must use HTTPS protocol. | [optional] 
**redirect_callback** | **String** | Must be passed when re-triggering the service AFTER the user has been redirected back to you from the bank&#39;s website. The value must consist of the complete query parameter list that was contained in the received redirect. | [optional] 
**interface** | **String** | The interface to use for connecting with the bank. | [optional] 


