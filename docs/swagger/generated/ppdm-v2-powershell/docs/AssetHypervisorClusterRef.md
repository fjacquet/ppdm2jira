# AssetHypervisorClusterRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the hypervisor cluster. | [optional] 
**Name** | **String** | Name of the hypervisor cluster. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetHypervisorClusterRef = Initialize-PpdmApiReferenceAssetHypervisorClusterRef  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AssetHypervisorClusterRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

