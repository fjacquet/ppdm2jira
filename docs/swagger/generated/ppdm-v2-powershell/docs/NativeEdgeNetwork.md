# NativeEdgeNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the network. | [optional] 
**SubnetId** | **String** | The subnet ID of the network. | [optional] 
**SubnetName** | **String** | The subnet name of the network. | [optional] 
**SubnetType** | [**SubnetType**](SubnetType.md) |  | [optional] 
**Uuid** | **String** | The UUID of the network. | [optional] 

## Examples

- Prepare the resource
```powershell
$NativeEdgeNetwork = Initialize-PpdmApiReferenceNativeEdgeNetwork  -Name null `
 -SubnetId null `
 -SubnetName null `
 -SubnetType null `
 -Uuid null
```

- Convert the resource to JSON
```powershell
$NativeEdgeNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

