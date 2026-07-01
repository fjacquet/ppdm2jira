# GetDateFieldResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateCustomFieldId** | **Int64** | A date custom field ID. This is returned if the type is &quot;&quot;DateCustomField&quot;&quot;. | [optional] 
**Type** | **String** | The date field type. This is &quot;&quot;DueDate&quot;&quot;, &quot;&quot;TargetStartDate&quot;&quot;, &quot;&quot;TargetEndDate&quot;&quot; or &quot;&quot;DateCustomField&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetDateFieldResponse = Initialize-JiraApiReferenceGetDateFieldResponse  -DateCustomFieldId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GetDateFieldResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

