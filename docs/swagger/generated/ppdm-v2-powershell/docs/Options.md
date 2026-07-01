# Options
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MinimumProxyVersion** | **String** |  | [optional] 
**QuiesceWaitTime** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Options = Initialize-PpdmApiReferenceOptions  -MinimumProxyVersion null `
 -QuiesceWaitTime null
```

- Convert the resource to JSON
```powershell
$Options | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

