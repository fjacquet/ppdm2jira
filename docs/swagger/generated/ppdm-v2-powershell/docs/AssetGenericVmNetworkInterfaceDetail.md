# AssetGenericVmNetworkInterfaceDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **Boolean** | Indicates whether the NIC is attached to the network or not. | [optional] 
**MacAddress** | **String** | MAC Address. | [optional] 
**Name** | **String** | The name or ID of the network interface. | [optional] 
**SubnetId** | **String** | ID of the subnet attached to the network interface. | [optional] 
**SubnetName** | **String** | Name of the subnet attached to the network interface. | [optional] 
**TrunkedVlanList** | **Int32[]** | List of VLAN IDs if the vlanMode is TRUNKED. | [optional] 
**VlanMode** | **String** | The mode of the VLAN. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetGenericVmNetworkInterfaceDetail = Initialize-PpdmApiReferenceAssetGenericVmNetworkInterfaceDetail  -Connected null `
 -MacAddress null `
 -Name null `
 -SubnetId null `
 -SubnetName null `
 -TrunkedVlanList null `
 -VlanMode null
```

- Convert the resource to JSON
```powershell
$AssetGenericVmNetworkInterfaceDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

