# ExtraParams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of parameter. | 
**Value** | **String** | Value of parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtraParams = Initialize-PpdmApiReferenceExtraParams  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ExtraParams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

