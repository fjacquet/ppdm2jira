# Strategy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OverwriteExisting** | **Boolean** |  | [optional] 
**RestoreToOriginalPath** | **Boolean** |  | [optional] 
**RetainFolderHierarchy** | **Boolean** |  | [optional] 
**SourceFileCollisionHandling** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Strategy = Initialize-PpdmApiReferenceStrategy  -OverwriteExisting null `
 -RestoreToOriginalPath null `
 -RetainFolderHierarchy null `
 -SourceFileCollisionHandling null
```

- Convert the resource to JSON
```powershell
$Strategy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

