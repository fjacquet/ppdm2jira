# CdrCloudNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SecurityGroups** | [**SecurityGroup[]**](SecurityGroup.md) |  | [optional] 
**Subnets** | [**Subnet[]**](Subnet.md) |  | [optional] 
**VirtualNetworkId** | **String** |  | [optional] 
**VirtualNetworkName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrCloudNetwork = Initialize-PpdmApiReferenceCdrCloudNetwork  -SecurityGroups null `
 -Subnets null `
 -VirtualNetworkId null `
 -VirtualNetworkName null
```

- Convert the resource to JSON
```powershell
$CdrCloudNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

