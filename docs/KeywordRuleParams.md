# FinapiApi::KeywordRuleParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category_id** | **Integer** | ID of the category that this rule should assign to the matching transactions | 
**direction** | **String** | Direction for the rule. &#39;Income&#39; means that the rule applies to transactions with a positive amount only, &#39;Spending&#39; means it applies to transactions with a negative amount only. &#39;Both&#39; means that it applies to both kind of transactions. Note that in case of &#39;Both&#39;, finAPI will create two individual rules (one with direction &#39;Income&#39; and one with direction &#39;Spending&#39;). | 
**keywords** | **Array&lt;String&gt;** | Set of keywords for the rule (Keywords are regarded case-insensitive). The minimum number of keywords is 1. The maximum number of keywords is 100. | 


