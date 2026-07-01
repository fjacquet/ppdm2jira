# SyncTelemetryInstance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contexts** | [**SyncTelemetryInstanceContexts**](SyncTelemetryInstanceContexts.md) |  | [optional] 
**Cutoff** | **System.DateTime** | The sync cutoff time. | [optional] 
**DestSystemId** | **String** | The destination system id. | [optional] 
**InstanceId** | **String** | The sync instance id. | [optional] 
**RootContextId** | **String** | The root context id. | [optional] 
**Since** | **System.DateTime** | The sync since time. | [optional] 
**SourceSystemId** | **String** | The source system id. | [optional] 
**StorageId** | **String** | The storage system id. | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncTelemetryInstance = Initialize-PpdmApiReferenceSyncTelemetryInstance  -Contexts null `
 -Cutoff null `
 -DestSystemId null `
 -InstanceId null `
 -RootContextId null `
 -Since null `
 -SourceSystemId null `
 -StorageId null
```

- Convert the resource to JSON
```powershell
$SyncTelemetryInstance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

