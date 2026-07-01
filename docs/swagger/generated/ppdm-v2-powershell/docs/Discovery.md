# Discovery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | An optional description for the discovery. If a description is not provided, a default description is assigned. | [optional] 
**ExecutionPlanId** | **String** | The ID of the execution plan that this execution depends on. | [optional] 
**Id** | **String** | The ID of the internal discovery information in Elasticsearch (not usually needed). This ID is only valid to be provided to API taking ID in path. | [optional] 
**InternalRequest** | **Boolean** | This must be set, if the discovery was triggered internally using a component of the system. | [optional] 
**Level** | **String** | How deeply to discover the starting resource. Valid values are: - ManagementInterface or INVENTORY_SOURCE - Device or HOST (adm) or HOSTFULL (adm) or NETWORK_HOST or STORAGE_SYSTEM - ProtectableData or APPSERVER (adm) or APPLICATION_SYSTEM - DataCopies or ASSET or STORAGE_TARGET  The default level value is DataCopies. | [optional] [default to "DataCopies"]
**Name** | **String** | An optional name for the discovery. If a name is not provided, a default name is assigned. | [optional] 
**Schedule** | [**DiscoverySchedule**](DiscoverySchedule.md) |  | [optional] 
**Start** | **String** | The starting resource from which to discover. Examples are: - /inventorySources/UUID or /inventory-sources/UUID or /managementInterfaces/UUID - /hosts/UUID - /storageSystems/UUID or /storage-systems/UUID or /storageArrays/UUID or /storage-arrays/UUID - /dataSources/UUID or /assets/UUID - /dataTargets/UUID  There is no default for the start value and it is required. | 
**TaskId** | **String** | The ID of the currently running discovery activity, or not reported if the discovery activity has completed. For example, after starting a discovery with POST this field contains the discovery activity started and continues to contain the discovery activity during GET actions.  Once the discovery activity has completed, it is reported (as its value is set to null). | [optional] 
**WorkflowTaskId** | **String** | The ID of the Workflow that is created that corresponds to this type of discovery (start/level). | [optional] 

## Examples

- Prepare the resource
```powershell
$Discovery = Initialize-PpdmApiReferenceDiscovery  -Description null `
 -ExecutionPlanId null `
 -Id null `
 -InternalRequest null `
 -Level null `
 -Name null `
 -Schedule null `
 -Start null `
 -TaskId null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$Discovery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

