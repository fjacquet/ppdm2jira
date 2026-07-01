# MessageBulkResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acknowledgement** | [**AlertAcknowledgement**](AlertAcknowledgement.md) |  | [optional] 
**ErrorResponseObject** | [**ErrorResponseObject**](ErrorResponseObject.md) |  | [optional] 
**Id** | **String** | Message ID for failed update. | [optional] 

## Examples

- Prepare the resource
```powershell
$MessageBulkResult = Initialize-PpdmApiReferenceMessageBulkResult  -Acknowledgement null `
 -ErrorResponseObject null `
 -Id null
```

- Convert the resource to JSON
```powershell
$MessageBulkResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

