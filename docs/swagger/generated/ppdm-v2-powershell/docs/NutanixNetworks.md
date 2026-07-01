# NutanixNetworks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModel** | **String** | The access type. | [optional] 
**ConnectState** | **String** | The connect state. | [optional] 
**NetworkAdapterId** | **String** | The UUID of network adapter. | [optional] 
**SubnetId** | **String** | The ID of the subnet. | [optional] 
**TrunkVlanIds** | **Int32[]** | The array of trunked VLAN IDs. | [optional] 

## Examples

- Prepare the resource
```powershell
$NutanixNetworks = Initialize-PpdmApiReferenceNutanixNetworks  -AccessModel null `
 -ConnectState null `
 -NetworkAdapterId null `
 -SubnetId null `
 -TrunkVlanIds null
```

- Convert the resource to JSON
```powershell
$NutanixNetworks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

