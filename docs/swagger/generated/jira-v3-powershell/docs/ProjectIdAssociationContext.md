# ProjectIdAssociationContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identifier** | **Int64** |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ProjectIdAssociationContext = Initialize-JiraApiReferenceProjectIdAssociationContext  -Identifier null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProjectIdAssociationContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

