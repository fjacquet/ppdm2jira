# PrismVmDeploymentLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterUuid** | **String** |  | [optional] 
**HostUuid** | **String** |  | [optional] 
**StorageContainerUuid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PrismVmDeploymentLocation = Initialize-PpdmApiReferencePrismVmDeploymentLocation  -ClusterUuid null `
 -HostUuid null `
 -StorageContainerUuid null
```

- Convert the resource to JSON
```powershell
$PrismVmDeploymentLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

