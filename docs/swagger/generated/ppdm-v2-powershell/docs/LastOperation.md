# LastOperation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | **String** |  | [optional] 
**Operation** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LastOperation = Initialize-PpdmApiReferenceLastOperation  -Detail null `
 -Operation null `
 -Status null
```

- Convert the resource to JSON
```powershell
$LastOperation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

