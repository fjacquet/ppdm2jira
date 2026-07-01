# SystemHealthScoreCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HealthStatus** | [**HealthStatus**](HealthStatus.md) |  | 
**RangeEnd** | **Int32** |  | 
**RangeStart** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$SystemHealthScoreCategory = Initialize-PpdmApiReferenceSystemHealthScoreCategory  -HealthStatus null `
 -RangeEnd null `
 -RangeStart null
```

- Convert the resource to JSON
```powershell
$SystemHealthScoreCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

