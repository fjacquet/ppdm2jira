# RemoveFieldAssociationsRequestItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemeIds** | **Int64[]** | Set of scheme IDs from which to remove field associations | 

## Examples

- Prepare the resource
```powershell
$RemoveFieldAssociationsRequestItem = Initialize-JiraApiReferenceRemoveFieldAssociationsRequestItem  -SchemeIds null
```

- Convert the resource to JSON
```powershell
$RemoveFieldAssociationsRequestItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

