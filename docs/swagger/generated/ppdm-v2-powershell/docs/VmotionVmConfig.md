# VmotionVmConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | When the vMotion request is submitted, this optional description is used as the description of the PowerProtect Data Manager task that is created to perform the vMotion request. | [optional] 
**Disks** | [**VirtualDiskMapping[]**](VirtualDiskMapping.md) | The optional VirtualDiskMapping for the target virtual disk mapping information to perform the restore to.  If supplied, the virtual disk mapping information is used for the restore. Otherwise, the original virtual disk mapping information is used (virtual disk mapping information of targetVm from restoredCopyResource). | [optional] 
**TargetDatastoreMoref** | **String** | The optional MoRef (managed object reference) of the target datastore to perform the restore to.  If supplied, then the datastore with the targetDatastoreMoref is used for the restore. Otherwise, the original datastoreMoref is used (datastore of targetVm from restoredCopyResource). If neither MoRef is available, the API returns a bad request status.  If no disk array is specified, the VMDK files are restored to the targetDatastoreMoref. | [optional] 
**TargetFolderMoref** | **String** | The optional MoRef (managed object reference) of the target folder to perform the restore to.  If supplied, the folder with the targetFolderMoref is used for the restore. Otherwise, the original folderMoref is used (folder of targetVm from restoredCopyResource). | [optional] 
**TargetHostMoref** | **String** | The optional MoRef (managed objectrReference) of the target host to perform the restore to.  If supplied, the host with the targetHostMoref is used for the restore. Otherwise, the original hostMoref is used (host of targetVm from restoredCopyResource). | [optional] 
**TargetResourcePoolMoref** | **String** | The optional MoRef (managed object reference) of the target resourcePool to perform the restore to.  If supplied, then the resourcePool with the targetResourcePoolMoref is used for the restore. Otherwise, the original resourcePoolMoref is used (resourcePool of targetVm from restoredCopyResource). | [optional] 
**VmMoref** | **String** | Not used. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmotionVmConfig = Initialize-PpdmApiReferenceVmotionVmConfig  -Description null `
 -Disks null `
 -TargetDatastoreMoref null `
 -TargetFolderMoref null `
 -TargetHostMoref null `
 -TargetResourcePoolMoref null `
 -VmMoref null
```

- Convert the resource to JSON
```powershell
$VmotionVmConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

