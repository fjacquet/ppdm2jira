# SubComponent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the sub-component within the PowerProtect Data Manager. | [optional] 
**Version** | **String** | The version of the sub-component within the PowerProtect Data Manager. | [optional] 

## Examples

- Prepare the resource
```powershell
$SubComponent = Initialize-PpdmApiReferenceSubComponent  -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SubComponent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

