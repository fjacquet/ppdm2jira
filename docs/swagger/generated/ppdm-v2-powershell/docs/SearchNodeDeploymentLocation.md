# SearchNodeDeploymentLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterMoref** | **String** | Specify cluster MoRef. Optional if a host MoRef or resource pool MoRef is specified. | [optional] 
**DatastoreMoref** | **String** | Moref of datastore to use for node storage. | 
**FolderMoref** | **String** | Virtual Machine (VM) folder Moref. | [optional] 
**HostMoref** | **String** | Specify Host moref. Not required if hostMoref is provided. | [optional] 
**ResourcePoolMoref** | **String** | Specify a resource pool or a cluster. Not required if hostMoref is provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodeDeploymentLocation = Initialize-PpdmApiReferenceSearchNodeDeploymentLocation  -ClusterMoref null `
 -DatastoreMoref null `
 -FolderMoref null `
 -HostMoref null `
 -ResourcePoolMoref null
```

- Convert the resource to JSON
```powershell
$SearchNodeDeploymentLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

