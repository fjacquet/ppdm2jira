# VLANReferenceDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetCount** | **Int32** |  | [optional] 
**PolicyCount** | **Int32** |  | [optional] 
**ProxyCount** | **Int32** |  | [optional] 
**SearchCount** | **Int32** |  | [optional] 
**Total** | **Int32** |  | [optional] 
**VlanName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VLANReferenceDetails = Initialize-PpdmApiReferenceVLANReferenceDetails  -AssetCount null `
 -PolicyCount null `
 -ProxyCount null `
 -SearchCount null `
 -Total null `
 -VlanName null
```

- Convert the resource to JSON
```powershell
$VLANReferenceDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

