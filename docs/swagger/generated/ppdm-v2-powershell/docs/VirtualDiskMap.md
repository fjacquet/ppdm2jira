# VirtualDiskMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Datastore** | **String** |  | [optional] 
**Label** | **String** |  | [optional] 
**ProvisioningType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VirtualDiskMap = Initialize-PpdmApiReferenceVirtualDiskMap  -Datastore null `
 -Label null `
 -ProvisioningType null
```

- Convert the resource to JSON
```powershell
$VirtualDiskMap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

