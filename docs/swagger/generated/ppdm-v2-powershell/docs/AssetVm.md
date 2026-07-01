# AssetVm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cluster** | **String** | Name of the cluster that contains the VM. If the host does not belong to a cluster, this field will be null. | [optional] 
**ClusterName** | **String** | Name of the cluster that contains the VM. If the host does not belong to a cluster, this field will be null. | [optional] 
**DataMoverType** | **String** |  | [optional] 
**Datacenter** | **String** | Datacenter name that the virtual machine belongs to. | [optional] 
**Datastore** | [**AssetVmDatastore[]**](AssetVmDatastore.md) | Datastore that the virtual machine belongs to. | [optional] 
**DisableCbt** | **Boolean** | Enable or disable the CBT utilization for Virtual Machine (VM) backup operation. | [optional] 
**DisableQuiescing** | **Boolean** | Indicates whether to turn off the quiescing snapshot for Virtual Machine (VM) backups. | [optional] 
**Disks** | [**AssetVmDisks[]**](AssetVmDisks.md) | Partitions of the virtual machine. | [optional] 
**DnsName** | **String** |  | [optional] 
**EsxName** | **String** | ESXi server name that the virtual machine belongs to. | [optional] 
**ExternalId** | **String** | The virtual machine instance uuid. | [optional] [readonly] 
**Folder** | **String** | The name of the folder. | [optional] 
**GuestOS** | **String** | Operation system name of the virtual machine. | [optional] 
**HostMoref** | **String** | Hostmoref of the virtual machine. | [optional] 
**HostName** | **String** | Hostname of the virtual machine. | [optional] 
**InventoryPath** | **String** |  | [optional] 
**InventorySourceId** | **String** | Inventory source ID that the virtual machine belongs to. | [optional] 
**InventorySourceName** | **String** | Inventory source name that the virtual machine belongs to. | [optional] 
**PowerState** | **String** | Power state of the virtual machine. | [optional] 
**PrimaryIpAddress** | **String** | Primary IP address of the virtual machine. | [optional] 
**ProtectedApplication** | **String** | App consistent type of the virtual machine. | [optional] 
**ResourcePool** | **String** | Resource pool name that the virtual machine belongs to. | [optional] 
**VApp** | **String** | Name of the vApp. | [optional] 
**VcenterName** | **String** | vCenter name that the virtual machine belongs to. | [optional] 
**VmBiosUuid** | **String** | BIOS ID of the virtual machine. | [optional] 
**VmMoref** | **String** | VMmoref of the virtual machine. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetVm = Initialize-PpdmApiReferenceAssetVm  -Cluster null `
 -ClusterName null `
 -DataMoverType null `
 -Datacenter null `
 -Datastore null `
 -DisableCbt null `
 -DisableQuiescing null `
 -Disks null `
 -DnsName null `
 -EsxName null `
 -ExternalId null `
 -Folder null `
 -GuestOS null `
 -HostMoref null `
 -HostName null `
 -InventoryPath null `
 -InventorySourceId null `
 -InventorySourceName null `
 -PowerState null `
 -PrimaryIpAddress null `
 -ProtectedApplication null `
 -ResourcePool null `
 -VApp null `
 -VcenterName null `
 -VmBiosUuid null `
 -VmMoref null
```

- Convert the resource to JSON
```powershell
$AssetVm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

