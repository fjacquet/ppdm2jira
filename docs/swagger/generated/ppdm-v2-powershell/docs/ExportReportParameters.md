# ExportReportParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailParameters** | [**ExportReportParametersEmailParameters**](ExportReportParametersEmailParameters.md) |  | [optional] 
**EmailRecipient** | **String[]** | The recipient list to whom the email will be sent. | [optional] 
**EmailSubject** | **String** | Subject of the email. | [optional] 
**FormatParameters** | [**FormatParameters**](FormatParameters.md) |  | [optional] 
**PublicationMethod** | **String** | The type of the export. For example: FILE | [optional] 
**ReportId** | **String** | ID returned from the POST /report API. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportReportParameters = Initialize-PpdmApiReferenceExportReportParameters  -EmailParameters null `
 -EmailRecipient null `
 -EmailSubject null `
 -FormatParameters null `
 -PublicationMethod null `
 -ReportId null
```

- Convert the resource to JSON
```powershell
$ExportReportParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

