# CardLayoutField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | [optional] 
**Id** | **Int64** |  | [optional] 
**Mode** | **String** |  | [optional] 
**Position** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CardLayoutField = Initialize-JiraApiReferenceCardLayoutField  -FieldId null `
 -Id null `
 -Mode null `
 -Position null
```

- Convert the resource to JSON
```powershell
$CardLayoutField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

