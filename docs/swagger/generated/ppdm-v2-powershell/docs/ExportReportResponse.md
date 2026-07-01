# ExportReportResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the file that is used to download the exported report. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportReportResponse = Initialize-PpdmApiReferenceExportReportResponse  -Id null
```

- Convert the resource to JSON
```powershell
$ExportReportResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

