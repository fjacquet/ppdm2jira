# GetIssueSourceResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The issue source type. This is &quot;&quot;Board&quot;&quot;, &quot;&quot;Project&quot;&quot; or &quot;&quot;Filter&quot;&quot;. | 
**Value** | **Int64** | The issue source value. This is a board ID if the type is &quot;&quot;Board&quot;&quot;, a project ID if the type is &quot;&quot;Project&quot;&quot; or a filter ID if the type is &quot;&quot;Filter&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetIssueSourceResponse = Initialize-JiraApiReferenceGetIssueSourceResponse  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$GetIssueSourceResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

