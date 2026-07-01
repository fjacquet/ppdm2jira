# CopyMetricStageCopyMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyCount** | **Int32** | Number of total copies at this stage. | [optional] 
**LatestCopyTime** | **System.DateTime** | Most recent copy time for recoverable copies. | [optional] 
**OldestCopyTime** | **System.DateTime** | Oldest copy time for recoverable copies. | [optional] 
**PolicyId** | **String** | Policy ID of the stage. | [optional] 
**StageId** | **String** | Stage ID. | [optional] 
**StageType** | **String** | Stage type. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyMetricStageCopyMetrics = Initialize-PpdmApiReferenceCopyMetricStageCopyMetrics  -CopyCount null `
 -LatestCopyTime null `
 -OldestCopyTime null `
 -PolicyId null `
 -StageId null `
 -StageType null
```

- Convert the resource to JSON
```powershell
$CopyMetricStageCopyMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

