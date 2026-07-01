# PostSyncVersionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | [optional] 
**DestPpdmVersion** | [**DestinationPpdmVersion**](DestinationPpdmVersion.md) |  | [optional] 
**DestProtocolVersion** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**ReturnCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostSyncVersionResponse = Initialize-PpdmApiReferencePostSyncVersionResponse  -CredentialId null `
 -DestPpdmVersion null `
 -DestProtocolVersion null `
 -Message null `
 -ReturnCode null
```

- Convert the resource to JSON
```powershell
$PostSyncVersionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

