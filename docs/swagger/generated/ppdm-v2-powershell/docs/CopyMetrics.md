# CopyMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CopyMetric[]**](CopyMetric.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyMetrics = Initialize-PpdmApiReferenceCopyMetrics  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$CopyMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

