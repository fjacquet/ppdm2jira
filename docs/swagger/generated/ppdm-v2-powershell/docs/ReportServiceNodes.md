# ReportServiceNodes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ReportNodeResponse[]**](ReportNodeResponse.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportServiceNodes = Initialize-PpdmApiReferenceReportServiceNodes  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ReportServiceNodes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

