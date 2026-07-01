# ProjectTemplateModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Archetype** | [**ProjectArchetype**](ProjectArchetype.md) |  | [optional] 
**DefaultBoardView** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**LiveTemplateProjectIdReference** | **Int64** |  | [optional] 
**Name** | **String** |  | [optional] 
**ProjectTemplateKey** | [**ProjectTemplateKey**](ProjectTemplateKey.md) |  | [optional] 
**SnapshotTemplate** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 
**TemplateGenerationOptions** | [**CustomTemplateOptions**](CustomTemplateOptions.md) |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectTemplateModel = Initialize-JiraApiReferenceProjectTemplateModel  -Archetype null `
 -DefaultBoardView null `
 -Description null `
 -LiveTemplateProjectIdReference null `
 -Name null `
 -ProjectTemplateKey null `
 -SnapshotTemplate null `
 -TemplateGenerationOptions null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProjectTemplateModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

