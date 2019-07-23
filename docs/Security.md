# FinapiApiClient::Security

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Identifier. Note: Whenever a security account is being updated, its security positions will be internally re-created, meaning that the identifier of a security position might change over time. | 
**account_id** | **Integer** | Security account identifier | 
**name** | **String** | Name | [optional] 
**isin** | **String** | ISIN | [optional] 
**wkn** | **String** | WKN | [optional] 
**quote** | **Float** | Quote | [optional] 
**quote_currency** | **String** | Currency of quote | [optional] 
**quote_type** | **String** | Type of quote. &#39;PERC&#39; if quote is a percentage value, &#39;ACTU&#39; if quote is the actual amount | [optional] 
**quote_date** | **String** | Quote date in the format &#39;YYYY-MM-DD HH:MM:SS.SSS&#39; (german time). | [optional] 
**quantity_nominal** | **Float** | Value of quantity or nominal | [optional] 
**quantity_nominal_type** | **String** | Type of quantity or nominal value. &#39;UNIT&#39; if value is a quantity, &#39;FAMT&#39; if value is the nominal amount | [optional] 
**market_value** | **Float** | Market value | [optional] 
**market_value_currency** | **String** | Currency of market value | [optional] 
**entry_quote** | **Float** | Entry quote | [optional] 
**entry_quote_currency** | **String** | Currency of entry quote | [optional] 
**profit_or_loss** | **Float** | Current profit or loss | [optional] 


