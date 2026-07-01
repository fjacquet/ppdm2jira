# ExportReportParametersEmailParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | **String** | The email body. | [optional] 
**Filters** | [**ExportReportParametersEmailParametersFiltersInner[]**](ExportReportParametersEmailParametersFiltersInner.md) | It contains all filters applied to generate the report. | [optional] 
**ReportTimeDisplay** | **String** | The time at which the user sends the email. | [optional] 
**ReportType** | **String** | The report name that is provided by the user. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportReportParametersEmailParameters = Initialize-PpdmApiReferenceExportReportParametersEmailParameters  -Content null `
 -Filters null `
 -ReportTimeDisplay null `
 -ReportType null
```

- Convert the resource to JSON
```powershell
$ExportReportParametersEmailParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

