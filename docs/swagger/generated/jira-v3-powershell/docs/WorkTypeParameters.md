# WorkTypeParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**IsRequired** | **Boolean** |  | 
**WorkTypeId** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$WorkTypeParameters = Initialize-JiraApiReferenceWorkTypeParameters  -Description null `
 -IsRequired null `
 -WorkTypeId null
```

- Convert the resource to JSON
```powershell
$WorkTypeParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

