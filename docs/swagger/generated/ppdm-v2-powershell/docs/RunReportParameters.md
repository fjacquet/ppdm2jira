# RunReportParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | **String** | The filter expression. | [optional] 
**Orderby** | **String** | The attributes and fields to sort by. | [optional] 
**Page** | **Int32** | The page number for pagination. | [optional] 
**PageSize** | **Int32** | The number for records per page. | [optional] 
**ReportTemplateId** | **String** | ID of the report template to be used to run the report. | [optional] 

## Examples

- Prepare the resource
```powershell
$RunReportParameters = Initialize-PpdmApiReferenceRunReportParameters  -VarFilter null `
 -Orderby null `
 -Page null `
 -PageSize null `
 -ReportTemplateId null
```

- Convert the resource to JSON
```powershell
$RunReportParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

