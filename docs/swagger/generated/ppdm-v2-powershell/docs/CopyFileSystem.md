# CopyFileSystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DdbeaMetadata** | [**CopyFileSystemDdbeaMetadata**](CopyFileSystemDdbeaMetadata.md) |  | [optional] 
**IncludesActiveDirectoryData** | **Boolean** | This field indicates if the backup copies include the Active Directory (AD) data. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyFileSystem = Initialize-PpdmApiReferenceCopyFileSystem  -DdbeaMetadata null `
 -IncludesActiveDirectoryData null
```

- Convert the resource to JSON
```powershell
$CopyFileSystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

