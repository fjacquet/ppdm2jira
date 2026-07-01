# NetworkInterfaceStorageUnit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpAddress** | **String** |  | [optional] 
**NetworkId** | **String** |  | [optional] 
**NetworkName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceStorageUnit = Initialize-PpdmApiReferenceNetworkInterfaceStorageUnit  -IpAddress null `
 -NetworkId null `
 -NetworkName null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceStorageUnit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

