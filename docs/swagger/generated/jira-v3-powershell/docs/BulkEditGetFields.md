# BulkEditGetFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndingBefore** | **String** | The end cursor for use in pagination. | [optional] [readonly] 
**Fields** | [**IssueBulkEditField[]**](IssueBulkEditField.md) | List of all the fields | [optional] [readonly] 
**StartingAfter** | **String** | The start cursor for use in pagination. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$BulkEditGetFields = Initialize-JiraApiReferenceBulkEditGetFields  -EndingBefore null `
 -Fields null `
 -StartingAfter null
```

- Convert the resource to JSON
```powershell
$BulkEditGetFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

