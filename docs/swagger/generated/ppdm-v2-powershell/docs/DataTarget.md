# DataTarget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**DataTargetDetails**](DataTargetDetails.md) |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastDiscovered** | **System.DateTime** |  | [optional] 
**LastDiscoveryStatus** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**StorageArrayId** | **String** |  | [optional] 
**Subtype** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] [readonly] 
**Vendor** | [**VendorEnum**](VendorEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataTarget = Initialize-PpdmApiReferenceDataTarget  -Details null `
 -ExternalId null `
 -Id null `
 -LastDiscovered null `
 -LastDiscoveryStatus null `
 -Name null `
 -StorageArrayId null `
 -Subtype null `
 -Type null `
 -UnsupportedFeatures null `
 -Vendor null
```

- Convert the resource to JSON
```powershell
$DataTarget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

