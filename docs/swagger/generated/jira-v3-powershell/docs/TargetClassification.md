# TargetClassification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Classifications** | [**System.Collections.Hashtable**](Array.md) | An object with the key as the ID of the target classification and value with the list of the IDs of the current source classifications. | 
**IssueType** | **String** | ID of the source issueType to which issues present in &#x60;issueIdOrKeys&#x60; belongs. | [optional] 
**ProjectKeyOrId** | **String** | ID or key of the source project to which issues present in &#x60;issueIdOrKeys&#x60; belongs. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetClassification = Initialize-JiraApiReferenceTargetClassification  -Classifications null `
 -IssueType null `
 -ProjectKeyOrId null
```

- Convert the resource to JSON
```powershell
$TargetClassification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

