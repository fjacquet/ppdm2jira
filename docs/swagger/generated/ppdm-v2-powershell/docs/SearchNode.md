# SearchNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity ID for the operation. | [optional] 
**AdminCredentials** | [**NodeCredentials**](NodeCredentials.md) |  | [optional] 
**DeploymentConfig** | [**SearchNodeDeploymentConfig**](SearchNodeDeploymentConfig.md) |  | 
**HostName** | **String** | FQDN or IP address of the search node. | 
**Id** | **String** | ID. | [optional] 
**InstanceUuid** | **String** | Instance ID of the search node. | [optional] 
**InventorySourceId** | **String** | The vCenter inventory source ID where the node is deployed. | 
**NodeType** | **String** | Node type: Master, Secondary. | [optional] 
**Platform** | **String** | The hypervisor environment type of node. | [optional] 
**RootCredentials** | [**NodeCredentials**](NodeCredentials.md) |  | [optional] 
**Status** | [**SearchNodeStatus**](SearchNodeStatus.md) |  | [optional] 
**VmMoref** | **String** | Virtual Machine (VM) managed object reference (MoRef) of the search node. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNode = Initialize-PpdmApiReferenceSearchNode  -ActivityId null `
 -AdminCredentials null `
 -DeploymentConfig null `
 -HostName null `
 -Id null `
 -InstanceUuid null `
 -InventorySourceId null `
 -NodeType null `
 -Platform null `
 -RootCredentials null `
 -Status null `
 -VmMoref null
```

- Convert the resource to JSON
```powershell
$SearchNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

