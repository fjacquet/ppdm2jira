# CreateFieldAssociationSchemeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the scheme to be created | [optional] 
**Name** | **String** | The name of the scheme to be created | 

## Examples

- Prepare the resource
```powershell
$CreateFieldAssociationSchemeRequest = Initialize-JiraApiReferenceCreateFieldAssociationSchemeRequest  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateFieldAssociationSchemeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

