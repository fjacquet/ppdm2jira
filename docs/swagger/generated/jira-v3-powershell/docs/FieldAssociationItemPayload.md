# FieldAssociationItemPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the field association item | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**QualifierId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**QualifierType** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**RendererType** | **String** | The renderer type of the field | [optional] 
**Required** | **Boolean** | Whether the field is required | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldAssociationItemPayload = Initialize-JiraApiReferenceFieldAssociationItemPayload  -Description The description of the field association item `
 -Pcri null `
 -QualifierId null `
 -QualifierType null `
 -RendererType jira-text-renderer `
 -Required null
```

- Convert the resource to JSON
```powershell
$FieldAssociationItemPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

