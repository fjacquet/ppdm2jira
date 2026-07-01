# AssetNasNasServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Addresses** | [**AssetNasNasServerAddresses[]**](AssetNasNasServerAddresses.md) |  | [optional] 
**Name** | **String** | The name of the NAS server of which the file system is a part of. | [optional] 
**NetworkInterfaces** | [**NasServerNetworkInterface[]**](NasServerNetworkInterface.md) | The associated Network Interface identifiers in the storage system, which are available for Array communication over file protocols. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetNasNasServer = Initialize-PpdmApiReferenceAssetNasNasServer  -Addresses null `
 -Name null `
 -NetworkInterfaces null
```

- Convert the resource to JSON
```powershell
$AssetNasNasServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

