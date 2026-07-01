# MandatoryFieldValueForADF
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Retain** | **Boolean** | If &#x60;true&#x60;, will try to retain original non-null issue field values on move. | [optional] [default to $true]
**Type** | **String** | Will treat as &#x60;MandatoryFieldValueForADF&#x60; if type is &#x60;adf&#x60; | [default to "raw"]
**Value** | [**SystemCollectionsHashtable**](.md) | Value for each field. Accepts Atlassian Document Format (ADF) for rich text fields like &#x60;description&#x60;, &#x60;environments&#x60;. For ADF format details, refer to: [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure) | 

## Examples

- Prepare the resource
```powershell
$MandatoryFieldValueForADF = Initialize-JiraApiReferenceMandatoryFieldValueForADF  -Retain null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$MandatoryFieldValueForADF | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

