# SyncTelemetryInstanceContexts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Download** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**DownloadSmy** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**Export** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**Import** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**ImportSmy** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**Root** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**Upload** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 
**UploadSmy** | [**SyncTelemetryContext**](SyncTelemetryContext.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncTelemetryInstanceContexts = Initialize-PpdmApiReferenceSyncTelemetryInstanceContexts  -Download null `
 -DownloadSmy null `
 -Export null `
 -Import null `
 -ImportSmy null `
 -Root null `
 -Upload null `
 -UploadSmy null
```

- Convert the resource to JSON
```powershell
$SyncTelemetryInstanceContexts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

