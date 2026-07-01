# SearchNodeStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aliases** | **String[]** | Aliases as known to DNS. | [optional] 
**Deployed** | **Boolean** | Specifies if the node Virtual Machine (VM) is deployed. | [optional] 
**DeployedTime** | **String** | Time when proxy was deployed (UTC ISO 8601 format). | [optional] 
**HostedComputeResource** | **String** | Hosted compute resource for the node. | [optional] 
**LastCheckedTime** | **String** | Last time periodic health check was performed (UTC ISO 8601 format). | [optional] 
**NodeStats** | [**SearchNodeStatistics**](SearchNodeStatistics.md) |  | [optional] 
**NodeStatus** | **String** | Current node status. | [optional] 
**NodeStatusDetail** | **String** | Detail of the node status. | [optional] 
**PowerState** | **String** | Virtual Machine (VM) power state. Value is On, Off, or Suspended. | [optional] 
**VcenterName** | **String** |  | [optional] 
**Version** | **String** | The application&#39;s version. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodeStatus = Initialize-PpdmApiReferenceSearchNodeStatus  -Aliases null `
 -Deployed null `
 -DeployedTime null `
 -HostedComputeResource null `
 -LastCheckedTime null `
 -NodeStats null `
 -NodeStatus null `
 -NodeStatusDetail null `
 -PowerState null `
 -VcenterName null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SearchNodeStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

