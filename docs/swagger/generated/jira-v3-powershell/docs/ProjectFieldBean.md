# ProjectFieldBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**FieldId** | **String** |  | [optional] 
**IsRequired** | **Boolean** |  | [optional] 
**ProjectId** | **Int64** |  | [optional] 
**WorkTypeId** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectFieldBean = Initialize-JiraApiReferenceProjectFieldBean  -Description null `
 -FieldId null `
 -IsRequired null `
 -ProjectId null `
 -WorkTypeId null
```

- Convert the resource to JSON
```powershell
$ProjectFieldBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

