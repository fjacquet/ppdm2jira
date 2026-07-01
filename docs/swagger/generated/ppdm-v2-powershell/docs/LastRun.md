# LastRun
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Last run status. | [optional] 
**Time** | **System.DateTime** | The time when the restore plan is started. | [optional] 

## Examples

- Prepare the resource
```powershell
$LastRun = Initialize-PpdmApiReferenceLastRun  -Status null `
 -Time null
```

- Convert the resource to JSON
```powershell
$LastRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

