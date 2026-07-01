# NasApplianceNetworkInterface
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Addresses** | [**NetworkInterfaceAddresses[]**](NetworkInterfaceAddresses.md) |  | [optional] 
**Id** | **String** | Uniquely identifies the interface. | [optional] 
**LinkSpeed** | **Int64** | A key factor during the NAS Server communication during the backup/restore is the throughput of the network. | [optional] 
**Mtu** | **Int32** | MTU of the interface. | [optional] 
**NetworkLabel** | **String** | To associate the network interface  to a VLAN ID or associate the network interface to an asset. | [optional] 
**Purposes** | **String[]** | Depending on the intended use of the interface, the purpose is defined by the user. | [optional] 
**Readiness** | **String** | The attribute indicates the state of a NAS server network interface. | [optional] 
**ReadinessChangedAt** | **System.DateTime** | The date and time when the readiness state was last changed. | [optional] 
**SupportedBackupMechanisms** | **String[]** | Backup mechanisms supported by this network interface. | [optional] 
**Tags** | **String[]** | NAS server or access zone will be populated in this list during discovery. | [optional] 
**VlanId** | **Int32** | VLAN identifier associated with the interface, if configured. | [optional] 

## Examples

- Prepare the resource
```powershell
$NasApplianceNetworkInterface = Initialize-PpdmApiReferenceNasApplianceNetworkInterface  -Addresses null `
 -Id null `
 -LinkSpeed null `
 -Mtu null `
 -NetworkLabel null `
 -Purposes null `
 -Readiness null `
 -ReadinessChangedAt null `
 -SupportedBackupMechanisms null `
 -Tags null `
 -VlanId null
```

- Convert the resource to JSON
```powershell
$NasApplianceNetworkInterface | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

