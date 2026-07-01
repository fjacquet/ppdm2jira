# SyncInstance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity ID (activityId) of the configuration. | [optional] 
**CutoffTime** | **String** | The end time window for querying the metadata. | [optional] 
**Directions** | [**SyncInstanceDirection[]**](SyncInstanceDirection.md) | An array of system Ids. | 
**DryRun** | **Boolean** |  | [optional] 
**Id** | **String** | The ID of the configuration. | [optional] 
**Level** | **String** | Level of synchronization. | 
**Owner** | [**SystemId**](SystemId.md) |  | [optional] 
**ResilienceScaned** | **Boolean** |  | [optional] 
**Since** | **String** | The start time window for querying the metadata. | [optional] 
**Type** | **String** | Type of synchronization. | 

## Examples

- Prepare the resource
```powershell
$SyncInstance = Initialize-PpdmApiReferenceSyncInstance  -ActivityId null `
 -CutoffTime null `
 -Directions null `
 -DryRun null `
 -Id null `
 -Level null `
 -Owner null `
 -ResilienceScaned null `
 -Since null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SyncInstance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

