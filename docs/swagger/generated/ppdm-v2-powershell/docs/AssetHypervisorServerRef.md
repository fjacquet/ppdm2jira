# AssetHypervisorServerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the hypervisor server. | [optional] 
**Name** | **String** | Name of the hypervisor server. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetHypervisorServerRef = Initialize-PpdmApiReferenceAssetHypervisorServerRef  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AssetHypervisorServerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

