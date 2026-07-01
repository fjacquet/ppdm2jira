# VmGuestTools
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnabledCapabilities** | **String[]** | Enabled capabilities of the virtual machine guest tools. | [optional] 
**SnapshotCapable** | **Boolean** | Indicate if the virtual machine guest tools are capable of snapshot. | [optional] 
**Status** | **String** | The status of the virtual machine guest tools. | [optional] 
**Version** | **String** | The version of the virtual machine guest tools. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmGuestTools = Initialize-PpdmApiReferenceVmGuestTools  -EnabledCapabilities null `
 -SnapshotCapable null `
 -Status null `
 -Version null
```

- Convert the resource to JSON
```powershell
$VmGuestTools | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

