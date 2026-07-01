# ReportNodeDeploymentConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiskProvisioning** | **String** | Disk Provisioning | [optional] 
**Location** | [**ReportNodeDeploymentConfigLocation**](ReportNodeDeploymentConfigLocation.md) |  | 
**Networks** | [**ReportNodeNetwork[]**](ReportNodeNetwork.md) |  | 
**Ovafile** | **String** | OVA file name to use for deployment. | [optional] 
**VmName** | **String** | Virtual Machine (VM) name for the report service node. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeDeploymentConfig = Initialize-PpdmApiReferenceReportNodeDeploymentConfig  -DiskProvisioning null `
 -Location null `
 -Networks null `
 -Ovafile null `
 -VmName null
```

- Convert the resource to JSON
```powershell
$ReportNodeDeploymentConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

