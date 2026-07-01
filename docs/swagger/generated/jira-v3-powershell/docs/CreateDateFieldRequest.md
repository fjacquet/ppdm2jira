# CreateDateFieldRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateCustomFieldId** | **Int64** | A date custom field ID. This is required if the type is &quot;&quot;DateCustomField&quot;&quot;. | [optional] 
**Type** | **String** | The date field type. This must be &quot;&quot;DueDate&quot;&quot;, &quot;&quot;TargetStartDate&quot;&quot;, &quot;&quot;TargetEndDate&quot;&quot; or &quot;&quot;DateCustomField&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$CreateDateFieldRequest = Initialize-JiraApiReferenceCreateDateFieldRequest  -DateCustomFieldId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreateDateFieldRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

