# SystemComponentsHealthMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ComponentHealthMetric[]**](ComponentHealthMetric.md) | System health components collection. | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemComponentsHealthMetric = Initialize-PpdmApiReferenceSystemComponentsHealthMetric  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SystemComponentsHealthMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

