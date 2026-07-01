# SyncContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity that was created to report the progress and status. | [optional] 
**Assignee** | [**Id**](Id.md) |  | [optional] 
**EndTime** | **System.DateTime** | The time when the operation was terminated. | [optional] 
**VarError** | [**SyncContextError**](SyncContextError.md) |  | [optional] 
**Id** | **String** | Resource id. | 
**Inputs** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | A map of key and value pairs, the value would be a customized hierarchy. | [optional] 
**Outputs** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | A map of key and value pairs, the value would be a customized hierarchy. | [optional] 
**Protocol** | **String** |  | 
**ResilienceTry** | **Int32** |  | [optional] 
**StartTime** | **System.DateTime** | The time when the operation was started to execute. | [optional] 
**State** | **String** |  | 
**SubContexts** | [**SyncContext[]**](SyncContext.md) |  | [optional] 
**SyncInstanceId** | **String** | The instance of the sync-kickOffId | 
**Trigger** | [**SyncTrigger**](SyncTrigger.md) |  | 
**TriggerTime** | **System.DateTime** | The time where the context was triggered. | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncContext = Initialize-PpdmApiReferenceSyncContext  -ActivityId null `
 -Assignee null `
 -EndTime null `
 -VarError null `
 -Id null `
 -Inputs null `
 -Outputs null `
 -Protocol null `
 -ResilienceTry null `
 -StartTime null `
 -State null `
 -SubContexts null `
 -SyncInstanceId null `
 -Trigger null `
 -TriggerTime null
```

- Convert the resource to JSON
```powershell
$SyncContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

