# ReportNodeServiceStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Status of the service | [optional] 
**StatusDescription** | **String** | Detail of each service running on report server | [optional] 
**Version** | **String** | Version of service | [optional] 
**VersionDescription** | **String** | Version details | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNodeServiceStatus = Initialize-PpdmApiReferenceReportNodeServiceStatus  -Status null `
 -StatusDescription null `
 -Version null `
 -VersionDescription null
```

- Convert the resource to JSON
```powershell
$ReportNodeServiceStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

