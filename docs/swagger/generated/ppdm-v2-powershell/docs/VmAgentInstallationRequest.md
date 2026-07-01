# VmAgentInstallationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationType** | **String** | The application type which will be installed on the selected VM. | [optional] 
**VmAssetId** | **String** | * The selected VM on which the application will be installed. * The asset type associated to this id should be a VM asset type. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmAgentInstallationRequest = Initialize-PpdmApiReferenceVmAgentInstallationRequest  -ApplicationType null `
 -VmAssetId null
```

- Convert the resource to JSON
```powershell
$VmAgentInstallationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

