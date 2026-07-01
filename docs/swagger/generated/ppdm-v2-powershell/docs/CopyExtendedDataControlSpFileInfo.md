# CopyExtendedDataControlSpFileInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoBackupPath** | **String** |  | [optional] 
**ControlFilePath** | **String** |  | [optional] 
**SpFilePath** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyExtendedDataControlSpFileInfo = Initialize-PpdmApiReferenceCopyExtendedDataControlSpFileInfo  -AutoBackupPath null `
 -ControlFilePath null `
 -SpFilePath null
```

- Convert the resource to JSON
```powershell
$CopyExtendedDataControlSpFileInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

