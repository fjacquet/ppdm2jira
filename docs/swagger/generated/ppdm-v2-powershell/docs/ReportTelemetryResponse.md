# ReportTelemetryResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**ReportTelemetryResponseStatus**](ReportTelemetryResponseStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportTelemetryResponse = Initialize-PpdmApiReferenceReportTelemetryResponse  -Status null
```

- Convert the resource to JSON
```powershell
$ReportTelemetryResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

