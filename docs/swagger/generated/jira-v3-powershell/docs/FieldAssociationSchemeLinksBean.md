# FieldAssociationSchemeLinksBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Associations** | **String** |  | [optional] 
**Projects** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldAssociationSchemeLinksBean = Initialize-JiraApiReferenceFieldAssociationSchemeLinksBean  -Associations null `
 -Projects null
```

- Convert the resource to JSON
```powershell
$FieldAssociationSchemeLinksBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

