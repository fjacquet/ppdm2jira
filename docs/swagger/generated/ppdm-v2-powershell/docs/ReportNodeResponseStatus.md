# ReportNodeResponseStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aliases** | **String[]** | Aliases as known to DNS. | [optional] 
**Deployed** | **Boolean** | Specifies if the node Virtual Machine (VM) is deployed. | [optional] 
**DeployedTime** | **String** | Time when proxy was deployed (UTC ISO 8601 format). | [optional] 
**HostedComputeResource** | **String** | Hosted compute resource for the node. | [optional] 
**LastCheckedTime** | **String** | Last time periodic health check was performed (UTC ISO 8601 format). | [optional] 
**NodeStats** | [**ReportNodeResponseStatusNodeStats**](ReportNodeResponseStatusNodeStats.md) |  | [optional] 
**NodeStatus** | **String** | Current node status. | [optional] 
**NodeStatusDetail** | **String** | Detail of the node status. | [optional] 
**PowerState** | **String** | Virtual Machine (VM) power state. | [optional] 
**VcenterName** | **String** |  | [optional] 
**Version** | **String** | The application version. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeResponseStatus = Initialize-PpdmApiReferenceReportNodeResponseStatus  -Aliases null `
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
$ReportNodeResponseStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

