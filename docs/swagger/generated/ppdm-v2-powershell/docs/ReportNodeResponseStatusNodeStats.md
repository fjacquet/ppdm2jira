# ReportNodeResponseStatusNodeStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiskCapacity** | **Int64** | Maximum disk capacity in bytes. | [optional] 
**DiskUsage** | **Int64** | Current disk usage in bytes. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeResponseStatusNodeStats = Initialize-PpdmApiReferenceReportNodeResponseStatusNodeStats  -DiskCapacity null `
 -DiskUsage null
```

- Convert the resource to JSON
```powershell
$ReportNodeResponseStatusNodeStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

