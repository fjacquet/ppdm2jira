# StorageSystemNasAppliance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkInterfaces** | [**NasApplianceNetworkInterface[]**](NasApplianceNetworkInterface.md) | The details on the Network Interfaces that are available for data path communication. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemNasAppliance = Initialize-PpdmApiReferenceStorageSystemNasAppliance  -NetworkInterfaces null
```

- Convert the resource to JSON
```powershell
$StorageSystemNasAppliance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

