# BoardFeaturePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FeatureKey** | **String** | The key of the feature | [optional] 
**State** | **Boolean** | Whether the feature should be turned on or off | [optional] 

## Examples

- Prepare the resource
```powershell
$BoardFeaturePayload = Initialize-JiraApiReferenceBoardFeaturePayload  -FeatureKey null `
 -State null
```

- Convert the resource to JSON
```powershell
$BoardFeaturePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

