# HypervBackupConfigFilesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileFormat** | **String** |  | [optional] 
**FileType** | **String** |  | [optional] 
**FullPath** | **String** |  | [optional] 
**Key** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HypervBackupConfigFilesInner = Initialize-PpdmApiReferenceHypervBackupConfigFilesInner  -FileFormat null `
 -FileType null `
 -FullPath null `
 -Key null
```

- Convert the resource to JSON
```powershell
$HypervBackupConfigFilesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

