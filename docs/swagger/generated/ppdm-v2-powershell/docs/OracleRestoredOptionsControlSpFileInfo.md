# OracleRestoredOptionsControlSpFileInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ControlSpFileInfo** | [**CopyExtendedDataControlSpFileInfo**](CopyExtendedDataControlSpFileInfo.md) |  | [optional] 
**Files** | [**OracleControlSpFileInfoFilesInner[]**](OracleControlSpFileInfoFilesInner.md) |  | [optional] 
**HasControlFile** | **Boolean** | Boolean to Indicates whether controlfile is part of the copy. | [optional] 
**HasSpFile** | **Boolean** | Boolean to Indicates whether spfile is part of the copy. | [optional] 

## Examples

- Prepare the resource
```powershell
$OracleRestoredOptionsControlSpFileInfo = Initialize-PpdmApiReferenceOracleRestoredOptionsControlSpFileInfo  -ControlSpFileInfo null `
 -Files null `
 -HasControlFile null `
 -HasSpFile null
```

- Convert the resource to JSON
```powershell
$OracleRestoredOptionsControlSpFileInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

