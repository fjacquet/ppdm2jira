# NutanixNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the NIC. | [optional] 
**SubnetId** | **String** | The ID of the subnet. | [optional] 
**SubnetName** | **String** | The name of the subnet. | [optional] 
**TrunkedVlanList** | **Int32[]** | The list of Virtual Local Area Network (VLAN) IDs that are applicable when the vlanMode is set to TRUNKED. | [optional] 
**Uuid** | **String** | The UUID of NIC. | [optional] 
**VlanMode** | **String** | The mode of the VLAN. | [optional] 

## Examples

- Prepare the resource
```powershell
$NutanixNetwork = Initialize-PpdmApiReferenceNutanixNetwork  -Name null `
 -SubnetId null `
 -SubnetName null `
 -TrunkedVlanList null `
 -Uuid null `
 -VlanMode null
```

- Convert the resource to JSON
```powershell
$NutanixNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

