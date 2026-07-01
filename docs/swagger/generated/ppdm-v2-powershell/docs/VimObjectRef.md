# VimObjectRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MOref** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VimObjectRef = Initialize-PpdmApiReferenceVimObjectRef  -MOref null `
 -Type null
```

- Convert the resource to JSON
```powershell
$VimObjectRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

