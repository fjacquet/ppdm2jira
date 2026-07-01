# AssetNetworksBatchRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetNetworkLabel** | **String** | Label the network interface preferred for NAS server communication. | [optional] 
**Id** | **String** | Asset ID. | [optional] 
**NetworkLabel** | **String** | Asset network to assign or unassign. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetNetworksBatchRequestBody = Initialize-PpdmApiReferenceAssetNetworksBatchRequestBody  -AssetNetworkLabel null `
 -Id null `
 -NetworkLabel null
```

- Convert the resource to JSON
```powershell
$AssetNetworksBatchRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

