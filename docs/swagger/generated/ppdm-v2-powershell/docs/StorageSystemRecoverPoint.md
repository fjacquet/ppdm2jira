# StorageSystemRecoverPoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtectedSpace** | **Double** | Protected space of RecoverPoint. | [optional] 
**SerialNumber** | **String** | Serial number of RecoverPoint. | [optional] 
**TotalCapacityManaged** | **Double** | Total capacity managed for RecoverPoint. | [optional] 
**Version** | **String** | Version of RecoverPoint storage system. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemRecoverPoint = Initialize-PpdmApiReferenceStorageSystemRecoverPoint  -ProtectedSpace null `
 -SerialNumber null `
 -TotalCapacityManaged null `
 -Version null
```

- Convert the resource to JSON
```powershell
$StorageSystemRecoverPoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

