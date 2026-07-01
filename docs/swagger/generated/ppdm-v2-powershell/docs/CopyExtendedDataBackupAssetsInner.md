# CopyExtendedDataBackupAssetsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Backup asset name. For example, for file system BMR, this property represents the critical volume name. | [optional] 
**Size** | **Int64** | Backup asset size. For example, for file system BMR, this property represents the critical volume capacity in GB. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyExtendedDataBackupAssetsInner = Initialize-PpdmApiReferenceCopyExtendedDataBackupAssetsInner  -Name null `
 -Size null
```

- Convert the resource to JSON
```powershell
$CopyExtendedDataBackupAssetsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

