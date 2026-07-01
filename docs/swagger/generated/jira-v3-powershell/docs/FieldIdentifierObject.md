# FieldIdentifierObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identifier** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$FieldIdentifierObject = Initialize-JiraApiReferenceFieldIdentifierObject  -Identifier null `
 -Type null
```

- Convert the resource to JSON
```powershell
$FieldIdentifierObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

