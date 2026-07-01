# FilterSubscription
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | [**GroupName**](GroupName.md) | The group subscribing to filter. | [optional] [readonly] 
**Id** | **Int64** | The ID of the filter subscription. | [optional] [readonly] 
**User** | [**User**](User.md) | The user subscribing to filter. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FilterSubscription = Initialize-JiraApiReferenceFilterSubscription  -Group null `
 -Id null `
 -User null
```

- Convert the resource to JSON
```powershell
$FilterSubscription | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

