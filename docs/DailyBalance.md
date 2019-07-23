# FinapiApiClient::DailyBalance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Date in the format &#39;YYYY-MM-DD HH:MM:SS.SSS&#39; (german time). | 
**balance** | **Float** | Calculated balance at the end of day (aggregation of all regarded accounts). | 
**income** | **Float** | The sum of income of the given day (aggregation of all regarded accounts). | 
**spending** | **Float** | The sum of spending of the given day (aggregation of all regarded accounts). | 
**transactions** | **Array&lt;Integer&gt;** | Identifiers of the transactions for the given day | 


