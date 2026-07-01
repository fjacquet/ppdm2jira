# UpdateFieldAssociationSchemeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description value to update | [optional] 
**Name** | **String** | The name value to update | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFieldAssociationSchemeRequest = Initialize-JiraApiReferenceUpdateFieldAssociationSchemeRequest  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateFieldAssociationSchemeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

