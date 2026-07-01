# VirtualDiskMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataStoreMoref** | **String** |  | [optional] 
**DiskLabel** | **String** |  | [optional] 
**Key** | **Int32** |  | [optional] 
**ProvisioningType** | **String** |  | [optional] 
**Uuid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VirtualDiskMapping = Initialize-PpdmApiReferenceVirtualDiskMapping  -DataStoreMoref null `
 -DiskLabel null `
 -Key null `
 -ProvisioningType null `
 -Uuid null
```

- Convert the resource to JSON
```powershell
$VirtualDiskMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

