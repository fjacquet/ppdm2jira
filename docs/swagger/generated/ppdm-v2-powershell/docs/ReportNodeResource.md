# ReportNodeResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeploymentConfig** | [**ReportNodeDeploymentConfig**](ReportNodeDeploymentConfig.md) |  | 
**HostName** | **String** | FQDN or IP address of the report service node. | [optional] 
**Id** | **String** | ID. | [optional] 
**InventorySourceId** | **String** | The vCenter inventory source ID where the node is deployed. | 

## Examples

- Prepare the resource
```powershell
$ReportNodeResource = Initialize-PpdmApiReferenceReportNodeResource  -DeploymentConfig null `
 -HostName null `
 -Id null `
 -InventorySourceId null
```

- Convert the resource to JSON
```powershell
$ReportNodeResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

