# ModelHost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Addresses** | [**Addresses**](Addresses.md) |  | [optional] 
**Cluster** | [**EmbeddedIdName**](EmbeddedIdName.md) |  | [optional] 
**CreatedBy** | [**CreatedByTypeEnum**](CreatedByTypeEnum.md) |  | [optional] 
**Details** | [**HostDetails**](HostDetails.md) |  | [optional] 
**Hostname** | **String** | Fully-qualified hostname | [optional] 
**Id** | **String** | The ID of host. | [optional] 
**IncludedInDiscovery** | **Boolean** | Indicates whether the host is included in discovery. | [optional] 
**InventorySourceId** | **String** | The inventory source ID of host. | [optional] 
**LastDiscovered** | **String** | The last discovery date for this host. | [optional] 
**LastDiscoveryAt** | **System.DateTime** | The last discovery date for this host. | [optional] [readonly] 
**LastDiscoveryResult** | [**DiscoveryResult**](DiscoveryResult.md) |  | [optional] 
**LastDiscoveryStatus** | **String** | The last discovery status for this host. | [optional] 
**LastDiscoveryTaskId** | **String** | The task ID of the last discovery task for this host. | [optional] [readonly] 
**LastUpdated** | **String** | The date that the host was last updated. | [optional] 
**Name** | **String** | The name of host. | [optional] 
**Status** | **String** | The status of host. | [optional] [readonly] 
**Type** | **String** | The type of host. | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelHost = Initialize-PpdmApiReferenceModelHost  -Addresses null `
 -Cluster null `
 -CreatedBy null `
 -Details null `
 -Hostname null `
 -Id null `
 -IncludedInDiscovery null `
 -InventorySourceId null `
 -LastDiscovered null `
 -LastDiscoveryAt null `
 -LastDiscoveryResult null `
 -LastDiscoveryStatus null `
 -LastDiscoveryTaskId null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ModelHost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

