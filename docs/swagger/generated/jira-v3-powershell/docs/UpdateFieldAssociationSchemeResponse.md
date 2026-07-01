# UpdateFieldAssociationSchemeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Id** | **Int64** |  | [optional] 
**Links** | [**UpdateFieldAssociationSchemeLinksBean**](UpdateFieldAssociationSchemeLinksBean.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFieldAssociationSchemeResponse = Initialize-JiraApiReferenceUpdateFieldAssociationSchemeResponse  -Description null `
 -Id null `
 -Links null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateFieldAssociationSchemeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

