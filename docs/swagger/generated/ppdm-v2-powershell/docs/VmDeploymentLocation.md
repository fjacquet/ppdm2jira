# VmDeploymentLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterMoref** | **String** |  | [optional] 
**DatastoreMoref** | **String** |  | [optional] 
**FolderMoref** | **String** |  | [optional] 
**HostMoref** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 
**ResourcePoolMoref** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VmDeploymentLocation = Initialize-PpdmApiReferenceVmDeploymentLocation  -ClusterMoref null `
 -DatastoreMoref null `
 -FolderMoref null `
 -HostMoref null `
 -NetworkMoref null `
 -ResourcePoolMoref null
```

- Convert the resource to JSON
```powershell
$VmDeploymentLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

