# ReportFilters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayValue** | **String** | The display value of the filter. | [optional] 
**Name** | **String** | Name of the filter. | [optional] 
**Value** | **String** | The value of the filter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportFilters = Initialize-PpdmApiReferenceReportFilters  -DisplayValue null `
 -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ReportFilters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

