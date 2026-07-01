# PostSyncInstanceResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** |  | [optional] 
**CutoffTime** | **String** | The end window time for query the metadata. | [optional] 
**Directions** | [**SyncInstanceDirection[]**](SyncInstanceDirection.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Level** | **String** | Level of synchronization. | [optional] 
**Owner** | [**SystemId**](SystemId.md) |  | [optional] 
**ResilienceScaned** | **Boolean** |  | [optional] 
**Since** | **String** | The start window time for query the metadata. | [optional] 
**StorageContextPairs** | [**StorageContextPairs[]**](StorageContextPairs.md) |  | [optional] 
**Type** | **String** | Type of synchronization. | [optional] 

## Examples

- Prepare the resource
```powershell
$PostSyncInstanceResponse = Initialize-PpdmApiReferencePostSyncInstanceResponse  -ActivityId null `
 -CutoffTime null `
 -Directions null `
 -Id null `
 -Level null `
 -Owner null `
 -ResilienceScaned null `
 -Since null `
 -StorageContextPairs null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PostSyncInstanceResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

