# FlrActivityResponses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**ActivityBody**](ActivityBody.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FlrActivityResponses = Initialize-PpdmApiReferenceFlrActivityResponses  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$FlrActivityResponses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

