# ReportScheduleFormatParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FitContent** | **Boolean** | The fit content to page. | [optional] 
**FormatType** | **String** | The format type. | [optional] 
**PageOrientation** | **String** | The page orientation. | [optional] 
**PageSize** | **String** | The page size. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportScheduleFormatParameters = Initialize-PpdmApiReferenceReportScheduleFormatParameters  -FitContent null `
 -FormatType null `
 -PageOrientation null `
 -PageSize null
```

- Convert the resource to JSON
```powershell
$ReportScheduleFormatParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

