# UpdateFieldAssociationsRequestItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RestrictedToWorkTypes** | **Int64[]** | (optional) Work types to restrict field to. Replaces any existing work type associations for the field. If not provided, the field is associated to any work types. | [optional] 
**SchemeIds** | **Int64[]** | Scheme IDs to associate field with | 

## Examples

- Prepare the resource
```powershell
$UpdateFieldAssociationsRequestItem = Initialize-JiraApiReferenceUpdateFieldAssociationsRequestItem  -RestrictedToWorkTypes null `
 -SchemeIds null
```

- Convert the resource to JSON
```powershell
$UpdateFieldAssociationsRequestItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

