# ResourceMetricGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int64** | The number of resources that matched for the value. | 
**Value** | **String** | The value for this grouping. | 

## Examples

- Prepare the resource
```powershell
$ResourceMetricGroups = Initialize-PpdmApiReferenceResourceMetricGroups  -Count null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ResourceMetricGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

