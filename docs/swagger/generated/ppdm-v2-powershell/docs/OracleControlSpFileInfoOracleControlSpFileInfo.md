# OracleControlSpFileInfoOracleControlSpFileInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ControlSpFileInfo** | [**CopyExtendedDataControlSpFileInfo**](CopyExtendedDataControlSpFileInfo.md) |  | [optional] 
**HasControlFile** | **Boolean** |  | [optional] 
**HasSPFile** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OracleControlSpFileInfoOracleControlSpFileInfo = Initialize-PpdmApiReferenceOracleControlSpFileInfoOracleControlSpFileInfo  -ControlSpFileInfo null `
 -HasControlFile null `
 -HasSPFile null
```

- Convert the resource to JSON
```powershell
$OracleControlSpFileInfoOracleControlSpFileInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

