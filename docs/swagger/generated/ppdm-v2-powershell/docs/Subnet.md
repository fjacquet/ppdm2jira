# Subnet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddressSpace** | **String** |  | [optional] 
**OccupiedIPs** | **String[]** |  | [optional] 
**SubnetId** | **String** |  | [optional] 
**SubnetName** | **String** |  | [optional] 
**SubnetZone** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Subnet = Initialize-PpdmApiReferenceSubnet  -AddressSpace null `
 -OccupiedIPs null `
 -SubnetId null `
 -SubnetName null `
 -SubnetZone null
```

- Convert the resource to JSON
```powershell
$Subnet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

