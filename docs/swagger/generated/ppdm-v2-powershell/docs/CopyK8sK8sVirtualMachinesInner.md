# CopyK8sK8sVirtualMachinesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BootDisk** | **String** | The name of the Persistent Volume Claim (PVC) which should not be allowed to be excluded while performing restores. | [optional] 
**Name** | **String** | The name of the K8S Virtual Machine (VM). | [optional] 
**PersistentVolumeClaimNames** | **String[]** | Lists the names of all the Persistent Volume Claims (PVCs) associated in a K8S Virtual Machine (VM) object. | [optional] 
**Uid** | **String** | The UID of the K8S Virtual Machine (VM). | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyK8sK8sVirtualMachinesInner = Initialize-PpdmApiReferenceCopyK8sK8sVirtualMachinesInner  -BootDisk null `
 -Name null `
 -PersistentVolumeClaimNames null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$CopyK8sK8sVirtualMachinesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

