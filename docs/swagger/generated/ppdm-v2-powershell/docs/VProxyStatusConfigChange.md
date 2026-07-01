# VProxyStatusConfigChange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyChanges** | [**ConfigPropertyChangeRef[]**](ConfigPropertyChangeRef.md) |  | [optional] 
**UpdatedTime** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyStatusConfigChange = Initialize-PpdmApiReferenceVProxyStatusConfigChange  -PropertyChanges null `
 -UpdatedTime null
```

- Convert the resource to JSON
```powershell
$VProxyStatusConfigChange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

