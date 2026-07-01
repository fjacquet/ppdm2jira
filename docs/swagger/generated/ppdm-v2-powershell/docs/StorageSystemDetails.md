# StorageSystemDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataDomain** | [**StorageSystemDataDomain**](StorageSystemDataDomain.md) |  | [optional] 
**NasAppliance** | [**StorageSystemNasAppliance**](StorageSystemNasAppliance.md) |  | [optional] 
**PowerMax** | [**StorageSystemPowerMax**](StorageSystemPowerMax.md) |  | [optional] 
**RecoverPoint** | [**StorageSystemRecoverPoint**](StorageSystemRecoverPoint.md) |  | [optional] 
**Xio** | [**StorageSystemXio**](StorageSystemXio.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemDetails = Initialize-PpdmApiReferenceStorageSystemDetails  -DataDomain null `
 -NasAppliance null `
 -PowerMax null `
 -RecoverPoint null `
 -Xio null
```

- Convert the resource to JSON
```powershell
$StorageSystemDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

