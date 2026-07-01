# TabPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) | The list of resource identifier of the field associated to the tab. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-screen-tab-fields/\#api-rest-api-3-screens-screenid-tabs-tabid-fields-post | [optional] 
**Name** | **String** | The name of the tab | [optional] 

## Examples

- Prepare the resource
```powershell
$TabPayload = Initialize-JiraApiReferenceTabPayload  -Fields null `
 -Name null
```

- Convert the resource to JSON
```powershell
$TabPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

