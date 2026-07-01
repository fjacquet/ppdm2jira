# VmExtendedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnableCompressedRestore** | **Boolean** | Passthrough field: Data Domain Boost compressed restore improves backup read performance by using data compression techniques. This option enables Data Domain Boost compressed restore. If the restore is performed under low bandwidth conditions, enabling this flag may help improve Data Domain Boost read performance.  When set to false, the Data Domain Boost data stream is not compressed.  When set to true, the Data Domain Boost data stream is compressed. | [optional] 
**PreferredInterface** | **String** | Passthrough field: The PowerProtect Data Domain host name. Restore using this specified PowerProtect Data Domain network. | [optional] 
**RequestedProxy** | **String** | Passthrough field: The proxy host name. Restore using this specified proxy. | [optional] 
**RestoreBiosUuid** | **Boolean** | The field for a Virtual Machine (VM) restore that indicates whether a restored VM&#39;s BIOS UUID is set to the value that was associated with the Virtual Machine (VM) at the time of the backup or if the Virtual Machine (VM) is given a new BIOS UUID. Restoring the BIOS UUID is effectively always true for a Restore to Original operation. As a result, this field is ignored for this operation. Valid values include: - false: A new BIOS UUID is generated for a restored VM. This is the default behavior if restoredBiosUuid is not specified. - true: The BIOS UUID of a restored Virtual Machine (VM) is set to the value from the backup. | [optional] 
**RestoreOriginalMachineConfig** | **Boolean** | The field for Cloud DR restore that marks, if set, the original MAC ID of the restored VM. | [optional] 
**Target** | [**RestoreGroupTargetVmInfo**](RestoreGroupTargetVmInfo.md) |  | [optional] 
**VcenterId** | **String** | The vCenter ID for Cloud DR restore. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmExtendedData = Initialize-PpdmApiReferenceVmExtendedData  -EnableCompressedRestore null `
 -PreferredInterface null `
 -RequestedProxy null `
 -RestoreBiosUuid null `
 -RestoreOriginalMachineConfig null `
 -Target null `
 -VcenterId null
```

- Convert the resource to JSON
```powershell
$VmExtendedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

