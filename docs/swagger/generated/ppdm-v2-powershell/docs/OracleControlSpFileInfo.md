# OracleControlSpFileInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Files** | [**OracleControlSpFileInfoFilesInner[]**](OracleControlSpFileInfoFilesInner.md) |  | [optional] 
**OracleControlSpFileInfo** | [**OracleControlSpFileInfoOracleControlSpFileInfo**](OracleControlSpFileInfoOracleControlSpFileInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OracleControlSpFileInfo = Initialize-PpdmApiReferenceOracleControlSpFileInfo  -Files null `
 -OracleControlSpFileInfo null
```

- Convert the resource to JSON
```powershell
$OracleControlSpFileInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

