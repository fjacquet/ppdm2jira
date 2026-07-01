# PreviewTrigger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the trigger. | [optional] 
**RuleKey** | **String** | The key of the trigger rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$PreviewTrigger = Initialize-JiraApiReferencePreviewTrigger  -Id null `
 -RuleKey null
```

- Convert the resource to JSON
```powershell
$PreviewTrigger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

