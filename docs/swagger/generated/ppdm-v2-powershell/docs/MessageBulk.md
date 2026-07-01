# MessageBulk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acknowledgement** | [**AlertAcknowledgement**](AlertAcknowledgement.md) |  | 
**AcknowledgementCount** | **Int32** | Number of alerts that were successfully updated with acknowledgment. | [optional] 
**AcknowledgementReceivedCount** | **Int32** | The number of alerts accepted from request. | [optional] 
**BulkResults** | [**MessageBulkResult[]**](MessageBulkResult.md) |  | [optional] 
**MessageIds** | **String[]** | List of alert IDs to acknowledge. | 

## Examples

- Prepare the resource
```powershell
$MessageBulk = Initialize-PpdmApiReferenceMessageBulk  -Acknowledgement null `
 -AcknowledgementCount null `
 -AcknowledgementReceivedCount null `
 -BulkResults null `
 -MessageIds null
```

- Convert the resource to JSON
```powershell
$MessageBulk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

