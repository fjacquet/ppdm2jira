# ReportingEngineStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Components** | [**ReportingEngineComponents**](ReportingEngineComponents.md) |  | [optional] 
**Status** | **String** | Consolidated status of the Reporting Engine. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportingEngineStatusResponse = Initialize-PpdmApiReferenceReportingEngineStatusResponse  -Components null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ReportingEngineStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

