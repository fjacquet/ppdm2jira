# SecurityLevelMemberPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Parameter** | **String** | Defines the value associated with the type. For reporter this would be \{&quot;&quot;null&quot;&quot;\}; for users this would be the names of specific users); for group this would be group names like \{&quot;&quot;administrators&quot;&quot;, &quot;&quot;jira-administrators&quot;&quot;, &quot;&quot;jira-users&quot;&quot;\} | [optional] 
**Type** | **String** | The type of the security level member | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityLevelMemberPayload = Initialize-JiraApiReferenceSecurityLevelMemberPayload  -Parameter null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SecurityLevelMemberPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

