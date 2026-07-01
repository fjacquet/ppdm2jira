# ActionArg
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The argument name. | [optional] 
**Values** | **String[]** | The list of resource group IDs. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActionArg = Initialize-PpdmApiReferenceActionArg  -Name null `
 -Values null
```

- Convert the resource to JSON
```powershell
$ActionArg | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

