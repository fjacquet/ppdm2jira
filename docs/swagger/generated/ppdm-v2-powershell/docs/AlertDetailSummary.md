# AlertDetailSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Summary** | **String** | The description of the failed activity. | [optional] 
**TaskId** | **String** | The activity ID that failed. | [optional] 

## Examples

- Prepare the resource
```powershell
$AlertDetailSummary = Initialize-PpdmApiReferenceAlertDetailSummary  -Summary null `
 -TaskId null
```

- Convert the resource to JSON
```powershell
$AlertDetailSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

