# VProxyPrismServerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectId** | **String** |  | [optional] 
**Prism** | [**CommonPrismServer**](CommonPrismServer.md) |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyPrismServerRef = Initialize-PpdmApiReferenceVProxyPrismServerRef  -ObjectId null `
 -Prism null `
 -Type null
```

- Convert the resource to JSON
```powershell
$VProxyPrismServerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

