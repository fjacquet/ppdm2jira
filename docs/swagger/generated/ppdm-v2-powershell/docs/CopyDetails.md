# CopyDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArraySerialNo** | **String** |  | [optional] 
**ArraySubType** | **String** |  | [optional] 
**BackupStartTime** | **System.DateTime** | The start time of the backup, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**FileSystem** | [**CopyFileSystem**](CopyFileSystem.md) |  | [optional] 
**HypervBackup** | [**HypervBackup**](HypervBackup.md) |  | [optional] 
**K8sBackup** | [**CopyK8s**](CopyK8s.md) |  | [optional] 
**MssqlBackup** | [**CopySql**](CopySql.md) |  | [optional] 
**NasBackup** | [**CopyNas**](CopyNas.md) |  | [optional] 
**NativeEdgeBackup** | [**NativeEdgeExtendedData**](NativeEdgeExtendedData.md) |  | [optional] 
**NutanixBackup** | [**NutanixExtendedData**](NutanixExtendedData.md) |  | [optional] 
**OracleBackup** | [**CopyOracle**](CopyOracle.md) |  | [optional] 
**PowerMaxBackup** | [**PowerMaxBackup**](PowerMaxBackup.md) |  | [optional] 
**StorageClass** | **String** |  | [optional] 
**StorageGroupID** | **String** |  | [optional] 
**VmBackup** | [**CopyVm**](CopyVm.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyDetails = Initialize-PpdmApiReferenceCopyDetails  -ArraySerialNo null `
 -ArraySubType null `
 -BackupStartTime null `
 -FileSystem null `
 -HypervBackup null `
 -K8sBackup null `
 -MssqlBackup null `
 -NasBackup null `
 -NativeEdgeBackup null `
 -NutanixBackup null `
 -OracleBackup null `
 -PowerMaxBackup null `
 -StorageClass null `
 -StorageGroupID null `
 -VmBackup null
```

- Convert the resource to JSON
```powershell
$CopyDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

