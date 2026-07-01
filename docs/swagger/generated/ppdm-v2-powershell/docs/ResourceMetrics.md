# ResourceMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ResourceMetric[]**](ResourceMetric.md) | The search result content. | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceMetrics = Initialize-PpdmApiReferenceResourceMetrics  -Content null
```

- Convert the resource to JSON
```powershell
$ResourceMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

