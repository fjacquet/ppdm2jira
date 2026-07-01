# AssociationContextObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identifier** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AssociationContextObject = Initialize-JiraApiReferenceAssociationContextObject  -Identifier null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AssociationContextObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

