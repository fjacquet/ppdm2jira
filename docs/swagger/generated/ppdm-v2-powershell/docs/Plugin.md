# Plugin
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Arch** | **String** |  | [optional] 
**BinaryPath** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**Endpoints** | [**PluginEndpoint[]**](PluginEndpoint.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Os** | **String** |  | [optional] 
**TenantId** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Plugin = Initialize-PpdmApiReferencePlugin  -Arch null `
 -BinaryPath null `
 -CreatedAt null `
 -Endpoints null `
 -Id null `
 -Name null `
 -Os null `
 -TenantId null `
 -UpdatedAt null `
 -Version null
```

- Convert the resource to JSON
```powershell
$Plugin | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

