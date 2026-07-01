# ActivityResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BytesTransferred** | **Int64** | The total data transferred to a storage during an activity in bytes. If the value is 0, nothing was transferred. Deprecated.  Use stats.bytesTransferred. | [optional] 
**VarError** | [**ActivityResultError**](ActivityResultError.md) |  | [optional] 
**Status** | **String** | The status of a completed activity. | [optional] 
**Summaries** | **String[]** | The summary of the activity. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityResult = Initialize-PpdmApiReferenceActivityResult  -BytesTransferred null `
 -VarError null `
 -Status null `
 -Summaries null
```

- Convert the resource to JSON
```powershell
$ActivityResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

