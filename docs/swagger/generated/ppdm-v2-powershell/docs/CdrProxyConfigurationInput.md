# CdrProxyConfigurationInput
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enable** | **Boolean** |  | [optional] 
**EnableAuthentication** | **Boolean** |  | [optional] 
**VarHost** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Username** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrProxyConfigurationInput = Initialize-PpdmApiReferenceCdrProxyConfigurationInput  -Enable null `
 -EnableAuthentication null `
 -VarHost null `
 -Port null `
 -Username null `
 -Password null
```

- Convert the resource to JSON
```powershell
$CdrProxyConfigurationInput | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

