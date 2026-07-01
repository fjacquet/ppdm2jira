# ReservedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InterruptedSessionId** | **String** |  | [optional] 
**InterruptedSessionType** | **String** |  | [optional] 
**SessionId** | **String** |  | [optional] 
**SessionType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReservedBy = Initialize-PpdmApiReferenceReservedBy  -InterruptedSessionId null `
 -InterruptedSessionType null `
 -SessionId null `
 -SessionType null
```

- Convert the resource to JSON
```powershell
$ReservedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

