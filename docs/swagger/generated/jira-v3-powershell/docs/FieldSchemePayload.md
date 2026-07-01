# FieldSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the field scheme | [optional] 
**Items** | [**FieldAssociationItemPayload[]**](FieldAssociationItemPayload.md) | The field association items for this field scheme. | [optional] 
**Name** | **String** | The name of the field scheme | [optional] 
**OnConflict** | **String** | The strategy to use when there is a conflict with an existing field scheme. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldSchemePayload = Initialize-JiraApiReferenceFieldSchemePayload  -Description This is a field scheme `
 -Items null `
 -Name My Field Scheme `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$FieldSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

