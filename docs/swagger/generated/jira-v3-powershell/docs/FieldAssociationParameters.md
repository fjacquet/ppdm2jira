# FieldAssociationParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**IsRequired** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$FieldAssociationParameters = Initialize-JiraApiReferenceFieldAssociationParameters  -Description null `
 -IsRequired null
```

- Convert the resource to JSON
```powershell
$FieldAssociationParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

