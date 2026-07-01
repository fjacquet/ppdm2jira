# RestoredFilesBatchRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyId** | **String** | The PowerProtect Data Manager copy id containing the source disk data to be mounted to the target vm. | 
**ElevateUser** | **Boolean** | If true, perform restore or browse using elevated (administrator) authority.  The user must have appropriate authority in the guest Virtual Machine (VM) OS by e.g. being a member of the Administrators group (Windows) or being allowed to run vflrbrowse via sudo without prompting for a password. | [optional] 
**NoMount** | **Boolean** | When true the actual mount operation is not performed. This setting is used as a mechanism to validate the credentials provded in targetUser and targetPassword, and to support Browsing of the target directories on the VM. (e.g. when performing batch operations) without incurring the costs of performing a mount. | [optional] 
**Passcode** | **String** | Multi-factor authentication (MFA) passcode for the &#39;targetUser&#39;. The passcode is required when MFA is enabled for FLR. The targetUser and passcode are authenticated by the registered MFA service before attempting to mount the copy to the target VM. | [optional] 
**RemoveAgent** | **Boolean** | This flag controls whether the FLR agent (installed on the target Virtual Machine (VM) as part of the FLR process) is removed when the FLR session is deleted. If the flag is true then the agent is uninstalled otherwise it is not. | [optional] [default to $false]
**TargetPassword** | **String** | The target user password. | 
**TargetUser** | **String** | The guest operating system user account that is used by PowerProtect Data Manager to recover files. | 
**TargetVmAssetId** | **String** | The Virtual Machine (VM) asset ID corresponding to the target Virtual Machine (VM) that will be used to mount the source disk data. | 
**Timeout** | **Int32** | Timeout, in seconds, of the mount operation. | [optional] [default to 300]
**FilePaths** | **String[]** | Array of the names of files to restore. | 
**OverwriteExisting** | **Boolean** | Flag indicating whether existing files should be overwritten. | [optional] [default to $true]
**RestoreToOriginalPath** | **Boolean** | Flag indicating whether the files should be restored to their original locations. The target directory field must be empty or null if this flag is set to true. | [optional] [default to $false]
**TargetDirectory** | **String** | Directory on the destination Virtual Machine (VM) where to restore files to. This string must be null or empty if the &quot;&quot;restoreToOriginalPath&quot;&quot; flag is set to true. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredFilesBatchRequestBody = Initialize-PpdmApiReferenceRestoredFilesBatchRequestBody  -CopyId null `
 -ElevateUser null `
 -NoMount null `
 -Passcode null `
 -RemoveAgent null `
 -TargetPassword null `
 -TargetUser null `
 -TargetVmAssetId null `
 -Timeout null `
 -FilePaths null `
 -OverwriteExisting null `
 -RestoreToOriginalPath null `
 -TargetDirectory null
```

- Convert the resource to JSON
```powershell
$RestoredFilesBatchRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

