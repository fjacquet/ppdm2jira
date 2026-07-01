# CdrCloudNetworks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CdrCloudNetwork[]**](CdrCloudNetwork.md) |  | [optional] 
**PageInfo** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrCloudNetworks = Initialize-PpdmApiReferenceCdrCloudNetworks  -Content null `
 -PageInfo null
```

- Convert the resource to JSON
```powershell
$CdrCloudNetworks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

