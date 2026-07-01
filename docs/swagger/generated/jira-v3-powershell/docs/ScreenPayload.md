# ScreenPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen | [optional] 
**Name** | **String** | The name of the screen | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Tabs** | [**TabPayload[]**](TabPayload.md) | The tabs of the screen. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-screen-tab-fields/\#api-rest-api-3-screens-screenid-tabs-tabid-fields-post | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenPayload = Initialize-JiraApiReferenceScreenPayload  -Description This is a screen `
 -Name My Screen `
 -Pcri null `
 -Tabs null
```

- Convert the resource to JSON
```powershell
$ScreenPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

