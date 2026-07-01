# CopyProtectionGroupRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupStrategy** | **String** | Backup strategy of the protection group when the copy was created. | [optional] 
**Id** | **String** | The protection group ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyProtectionGroupRef = Initialize-PpdmApiReferenceCopyProtectionGroupRef  -BackupStrategy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$CopyProtectionGroupRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

