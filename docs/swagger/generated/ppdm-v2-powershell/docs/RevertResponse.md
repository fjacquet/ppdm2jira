# RevertResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity ID of the revert upgrade package job. | 
**Id** | **String** | The ID of the upgrade package. | 

## Examples

- Prepare the resource
```powershell
$RevertResponse = Initialize-PpdmApiReferenceRevertResponse  -ActivityId null `
 -Id null
```

- Convert the resource to JSON
```powershell
$RevertResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

