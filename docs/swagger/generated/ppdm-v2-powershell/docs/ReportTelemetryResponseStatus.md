# ReportTelemetryResponseStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportServiceDeployed** | **Boolean** | Indicates if reporting service is deployed (true) or not (false). | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportTelemetryResponseStatus = Initialize-PpdmApiReferenceReportTelemetryResponseStatus  -ReportServiceDeployed null
```

- Convert the resource to JSON
```powershell
$ReportTelemetryResponseStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

