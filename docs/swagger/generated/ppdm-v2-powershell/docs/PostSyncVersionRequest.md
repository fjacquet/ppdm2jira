# PostSyncVersionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourcePpdmVersion** | [**SourcePpdmVersion**](SourcePpdmVersion.md) |  | [optional] 
**SourceProtocolVersion** | **String** |  | [optional] 
**SourceSystemId** | [**SystemId**](SystemId.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostSyncVersionRequest = Initialize-PpdmApiReferencePostSyncVersionRequest  -SourcePpdmVersion null `
 -SourceProtocolVersion null `
 -SourceSystemId null
```

- Convert the resource to JSON
```powershell
$PostSyncVersionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

