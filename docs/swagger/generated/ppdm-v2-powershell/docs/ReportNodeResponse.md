# ReportNodeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity ID of the report node deployment task. | [optional] 
**DeploymentConfig** | [**ReportNodeDeploymentConfig**](ReportNodeDeploymentConfig.md) |  | [optional] 
**ErrorMessage** | **String** | Detailed error message of any error occurred while processing the upgrade pre-check. | [optional] 
**HostName** | **String** | FQDN or IP address of the report service node. | [optional] 
**Id** | **String** | ID. | [optional] 
**InstanceUuid** | **String** | Instance UUID of the infrastructure node session. | [optional] 
**InventorySourceId** | **String** | The vCenter inventorySourceId where the report node is (or to be) deployed. | [optional] 
**Status** | [**ReportNodeResponseStatus**](ReportNodeResponseStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeResponse = Initialize-PpdmApiReferenceReportNodeResponse  -ActivityId null `
 -DeploymentConfig null `
 -ErrorMessage null `
 -HostName null `
 -Id null `
 -InstanceUuid null `
 -InventorySourceId null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ReportNodeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

