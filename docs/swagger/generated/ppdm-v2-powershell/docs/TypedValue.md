# TypedValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataType** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TypedValue = Initialize-PpdmApiReferenceTypedValue  -DataType null `
 -Value null
```

- Convert the resource to JSON
```powershell
$TypedValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

