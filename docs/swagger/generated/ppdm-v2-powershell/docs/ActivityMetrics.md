# ActivityMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aggregation** | [**NameValuePairInteger[]**](NameValuePairInteger.md) | A list of name-value pairs representing the number of activities in each status or state.  This object is deprecated, use &#x60;statusesAndStates&#x60; instead. | [optional] 
**FromCreateTime** | **System.DateTime** | The oldest created activity in this time interval. | [optional] 
**StatusesAndStates** | [**ActivityStateMetrics[]**](ActivityStateMetrics.md) | A list of metrics for each state or status. | [optional] 
**ToCreateTime** | **System.DateTime** | The latest created activity in this time interval. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityMetrics = Initialize-PpdmApiReferenceActivityMetrics  -Aggregation null `
 -FromCreateTime null `
 -StatusesAndStates null `
 -ToCreateTime null
```

- Convert the resource to JSON
```powershell
$ActivityMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

