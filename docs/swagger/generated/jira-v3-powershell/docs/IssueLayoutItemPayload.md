# IssueLayoutItemPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemKey** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Additional properties for this item. This field is only used when the type is FIELD. | [optional] 
**SectionType** | **String** | The item section type | [optional] 
**Type** | **String** | The item type. Currently only support FIELD | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueLayoutItemPayload = Initialize-JiraApiReferenceIssueLayoutItemPayload  -ItemKey null `
 -Properties null `
 -SectionType null `
 -Type null
```

- Convert the resource to JSON
```powershell
$IssueLayoutItemPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

