# ScreenSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultScreen** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Description** | **String** | The description of the screen scheme | [optional] 
**Name** | **String** | The name of the screen scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Screens** | [**System.Collections.Hashtable**](ProjectCreateResourceIdentifier.md) | Similar to the field layout scheme those mappings allow users to set different screens for different operations: default - always there, applied to all operations that don&#39;t have an explicit mapping &#x60;create&#x60;, &#x60;view&#x60;, &#x60;edit&#x60; - specific operations that are available and users can assign a different screen for each one of them https://support.atlassian.com/jira-cloud-administration/docs/manage-screen-schemes/\#Associating-a-screen-with-an-issue-operation | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenSchemePayload = Initialize-JiraApiReferenceScreenSchemePayload  -DefaultScreen null `
 -Description This is a screen scheme `
 -Name My Screen Scheme `
 -Pcri null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$ScreenSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

