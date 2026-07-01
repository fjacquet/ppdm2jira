# ReportResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SampleReportResponse[]**](SampleReportResponse.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportResponse = Initialize-PpdmApiReferenceReportResponse  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ReportResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

