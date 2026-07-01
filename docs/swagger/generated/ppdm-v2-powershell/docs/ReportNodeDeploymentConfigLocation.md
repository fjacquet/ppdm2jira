# ReportNodeDeploymentConfigLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterMoref** | **String** | vCenter Inventory ID of cluster. | [optional] 
**DatastoreMoref** | **String** | vCenter Inventory ID of datastore. | 
**HostMoref** | **String** | vCenter Inventory ID of host. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeDeploymentConfigLocation = Initialize-PpdmApiReferenceReportNodeDeploymentConfigLocation  -ClusterMoref null `
 -DatastoreMoref null `
 -HostMoref null
```

- Convert the resource to JSON
```powershell
$ReportNodeDeploymentConfigLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

