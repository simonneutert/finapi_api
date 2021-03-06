# FinapiApi::IbanRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Rule identifier | 
**category** | [**Category**](Category.md) | The category that this rule assigns to the transactions that it matches | 
**direction** | **String** | Direction for the rule. &#39;Income&#39; means that the rule applies to transactions with a positive amount only, &#39;Spending&#39; means it applies to transactions with a negative amount only. | 
**creation_date** | **String** | Timestamp of when the rule was created, in the format &#39;YYYY-MM-DD HH:MM:SS.SSS&#39; (german time) | 
**iban** | **String** | The IBAN for this rule | 


