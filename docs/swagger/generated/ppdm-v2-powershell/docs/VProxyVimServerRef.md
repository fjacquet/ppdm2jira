# VProxyVimServerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectId** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Vcenter** | [**CommonVimServer**](CommonVimServer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyVimServerRef = Initialize-PpdmApiReferenceVProxyVimServerRef  -ObjectId null `
 -Type null `
 -Vcenter null
```

- Convert the resource to JSON
```powershell
$VProxyVimServerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

