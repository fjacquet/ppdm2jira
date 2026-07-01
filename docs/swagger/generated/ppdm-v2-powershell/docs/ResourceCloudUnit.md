# ResourceCloudUnit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**ProfileName** | **String** |  | [optional] 
**ProviderName** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**StorageArrayId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceCloudUnit = Initialize-PpdmApiReferenceResourceCloudUnit  -Name null `
 -ProfileName null `
 -ProviderName null `
 -State null `
 -StorageArrayId null
```

- Convert the resource to JSON
```powershell
$ResourceCloudUnit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

