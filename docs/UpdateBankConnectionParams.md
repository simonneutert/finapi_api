# FinapiApiClient::UpdateBankConnectionParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**redirect_url** | **String** | Must be passed when the used interface has the property REDIRECT_APPROACH. The user will be redirected to the given URL from the bank&#39;s website after having entered his credentials. Must use HTTPS protocol. | [optional] 
**redirect_callback** | **String** | Must be passed when re-triggering the service AFTER the user has been redirected back to you from the bank&#39;s website. The value must consist of the complete query parameter list that was contained in the received redirect. | [optional] 
**bank_connection_id** | **Integer** | Bank connection identifier | 
**banking_pin** | **String** | NOTE: This field is deprecated and will be removed at some point. Use &#39;loginCredentials&#39; + &#39;interface&#39; instead. If any of those two fields is used, then the value of this field will be ignored.&lt;br&gt;&lt;br&gt;Online banking PIN. Any symbols are allowed. Max length: 170. If a PIN is stored in the bank connection, then this field may remain unset. If finAPI&#39;s web form is not required and the field is set though then it will always be used (even if there is some other PIN stored in the bank connection). If you want the user to enter a PIN in finAPI&#39;s web form even when a PIN is stored, then just set the field to any value, so that the service recognizes that you wish to use the web form flow. | [optional] 
**store_pin** | **BOOLEAN** | NOTE: This field is deprecated and will be removed at some point. Use &#39;storeSecrets&#39; instead.&lt;br&gt;&lt;br&gt;Whether to store the PIN. If the PIN is stored, it is not required to pass the PIN again when updating this bank connection or when executing orders (like money transfers). Default is false. &lt;br/&gt;&lt;br/&gt;NOTES:&lt;br/&gt; - before you set this field to true, please regard the &#39;pinsAreVolatile&#39; flag of this connection&#39;s bank;&lt;br/&gt; - this field is ignored in case when the user will need to use finAPI&#39;s web form. The user will be able to decide whether to store the PIN or not in the web form, depending on the &#39;storeSecretsAvailableInWebForm&#39; setting (see Client Configuration). | [optional] [default to false]
**import_new_accounts** | **BOOLEAN** | Whether new accounts that have not yet been imported will be imported or not. Default is false. &lt;br/&gt;&lt;br/&gt;NOTES:&lt;br/&gt;&amp;bull; For best performance of the bank connection update, you should not enable this flag unless you really expect new accounts to be available in the connection. It is recommended to let your users tell you through your application when they want the service to look for new accounts.&lt;br/&gt;&amp;bull; If you have imported a bank connection using specific &lt;code&gt;accountTypeIds&lt;/code&gt; (e.g. &lt;code&gt;1,2&lt;/code&gt; to import checking and saving accounts), you would import all other accounts (e.g. security accounts or credit cards) by setting &lt;code&gt;importNewAccounts&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt;. To avoid importing account types that you are not interested in, make sure this field is undefined or set to false. | [optional] [default to false]
**load_owner_data** | **BOOLEAN** | Whether to load/refresh information about the bank connection owner(s) - see field &#39;owners&#39;. Default value is &#39;false&#39;. Note that owner data is NOT loaded/refreshed during finAPI&#39;s automatic bank connection update. | [optional] [default to false]
**skip_positions_download** | **BOOLEAN** | Whether to skip the download of transactions and securities or not. If set to true, then finAPI will download just the accounts list with the accounts&#39; information (like account name, number, holder, etc), as well as the accounts&#39; balances (if possible), but skip the download of transactions and securities. Default is false.&lt;br/&gt;&lt;br/&gt;NOTES:&lt;br/&gt;&amp;bull; If you skip the download of transactions and securities during an import or update, you can still download them on a later update (though you might not get all positions at a later point, because the date range in which the bank servers provide this data is usually limited). However, once finAPI has downloaded the transactions or securities for the first time, you will not be able to go back to skipping the download of transactions and securities! In other words: Once you make your first request with &lt;code&gt;skipPositionsDownload&#x3D;false&lt;/code&gt; for a certain bank connection, you will no longer be able to make a request with &lt;code&gt;skipPositionsDownload&#x3D;true&lt;/code&gt; for that same bank connection.&lt;br/&gt;&amp;bull; If this bank connection is updated via finAPI&#39;s automatic batch update, then transactions and security positions &lt;u&gt;will&lt;/u&gt; be downloaded in any case!&lt;br/&gt;&amp;bull; For security accounts, skipping the downloading of the securities might result in the account&#39;s balance also not being downloaded.&lt;br/&gt; | [optional] [default to false]
**challenge_response** | **String** | Challenge response. This field should be set only when the previous attempt of calling the service failed with HTTP code 510, i.e. the bank sent a challenge for the user for an additional authentication. In this case, this field must contain the challenge response when re-triggering the service call. Note that in the context of finAPI&#39;s web form flow, finAPI will automatically deal with getting the challenge response from the user via the web form. | [optional] 
**interface** | **String** | The interface to use for connecting with the bank. | [optional] 
**login_credentials** | [**Array&lt;LoginCredentialData&gt;**](LoginCredentialData.md) | Set of login credentials. Must be passed in combination with the &#39;interface&#39; field. | [optional] 
**store_secrets** | **BOOLEAN** | Whether to store the secret login fields and/or other authorization data that finAPI might receive from the bank. If the data is stored, then updates can be triggered without the involvement of the users, as long as the credentials remain valid and the bank consent has not expired. Default value is false.&lt;br/&gt;&lt;br/&gt;NOTES:&lt;br/&gt; - this field is ignored in case when the user will need to use finAPI&#39;s web form. The user will be able to decide whether to store the secrets or not in the web form, depending on the &#39;storeSecretsAvailableInWebForm&#39; setting (see Client Configuration). | [optional] [default to false]
**two_step_procedure_id** | **String** | The bank-given ID of the two-step-procedure that should be used for the update. | [optional] 

