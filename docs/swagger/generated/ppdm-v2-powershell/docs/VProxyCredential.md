# VProxyCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectId** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyCredential = Initialize-PpdmApiReferenceVProxyCredential  -ObjectId null `
 -Password null `
 -Type null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$VProxyCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

