# BulkChangelogRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldIds** | **String[]** | List of field IDs to filter changelogs | [optional] 
**IssueIdsOrKeys** | **String[]** | List of issue IDs/keys to fetch changelogs for | 
**MaxResults** | **Int32** | The maximum number of items to return per page | [optional] [default to 1000]
**NextPageToken** | **String** | The cursor for pagination | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkChangelogRequestBean = Initialize-JiraApiReferenceBulkChangelogRequestBean  -FieldIds null `
 -IssueIdsOrKeys null `
 -MaxResults null `
 -NextPageToken null
```

- Convert the resource to JSON
```powershell
$BulkChangelogRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

