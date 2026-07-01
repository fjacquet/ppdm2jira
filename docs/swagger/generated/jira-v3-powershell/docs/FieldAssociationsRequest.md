# FieldAssociationsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociationContexts** | [**AssociationContextObject[]**](AssociationContextObject.md) | Contexts to associate/unassociate the fields with. | 
**Fields** | [**FieldIdentifierObject[]**](FieldIdentifierObject.md) | Fields to associate/unassociate with projects. | 

## Examples

- Prepare the resource
```powershell
$FieldAssociationsRequest = Initialize-JiraApiReferenceFieldAssociationsRequest  -AssociationContexts null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$FieldAssociationsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

