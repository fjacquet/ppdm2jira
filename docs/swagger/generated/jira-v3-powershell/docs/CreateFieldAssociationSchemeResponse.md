# CreateFieldAssociationSchemeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Id** | **Int64** |  | [optional] 
**Links** | [**CreateFieldAssociationSchemeLinksBean**](CreateFieldAssociationSchemeLinksBean.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateFieldAssociationSchemeResponse = Initialize-JiraApiReferenceCreateFieldAssociationSchemeResponse  -Description null `
 -Id null `
 -Links null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateFieldAssociationSchemeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

