# DeleteFieldAssociationSchemeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deleted** | **Boolean** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteFieldAssociationSchemeResponse = Initialize-JiraApiReferenceDeleteFieldAssociationSchemeResponse  -Deleted null `
 -Id null
```

- Convert the resource to JSON
```powershell
$DeleteFieldAssociationSchemeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

