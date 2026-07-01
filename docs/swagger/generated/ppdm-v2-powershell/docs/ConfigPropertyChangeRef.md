# ConfigPropertyChangeRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | **Int32** |  | [optional] 
**NewValue** | **String** |  | [optional] 
**OldValue** | **String** |  | [optional] 
**Operation** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigPropertyChangeRef = Initialize-PpdmApiReferenceConfigPropertyChangeRef  -Index null `
 -NewValue null `
 -OldValue null `
 -Operation null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ConfigPropertyChangeRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

