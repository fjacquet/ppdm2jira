# SyncTelemetryContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndTime** | **System.DateTime** | The ending processing time of the sync context. | [optional] 
**VarError** | [**SyncContextError**](SyncContextError.md) |  | [optional] 
**RecordCount** | **Int32** | The total number of records being processed for this context. | [optional] 
**ResilienceTry** | **Int32** | The number of retries for the context. | [optional] 
**StartTime** | **System.DateTime** | The starting processing time of the sync context. | [optional] 
**State** | **String** | The state of the context. | [optional] 
**TotalProcessedSize** | **Int64** | The total size of data being processed. | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncTelemetryContext = Initialize-PpdmApiReferenceSyncTelemetryContext  -EndTime null `
 -VarError null `
 -RecordCount null `
 -ResilienceTry null `
 -StartTime null `
 -State null `
 -TotalProcessedSize null
```

- Convert the resource to JSON
```powershell
$SyncTelemetryContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

