# ActivityLogInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileName** | **String** | The path to extended error information. | [optional] 
**LogText** | **String[]** | The extended error information. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityLogInfo = Initialize-PpdmApiReferenceActivityLogInfo  -FileName null `
 -LogText null
```

- Convert the resource to JSON
```powershell
$ActivityLogInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

