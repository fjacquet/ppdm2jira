# SystemHealthScoreCategories
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HealthScoreCategories** | [**SystemHealthScoreCategory[]**](SystemHealthScoreCategory.md) |  | 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SystemHealthScoreCategories = Initialize-PpdmApiReferenceSystemHealthScoreCategories  -HealthScoreCategories null `
 -Message null
```

- Convert the resource to JSON
```powershell
$SystemHealthScoreCategories | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

