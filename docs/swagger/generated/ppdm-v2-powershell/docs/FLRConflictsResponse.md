# FLRConflictsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommittedConflictList** | [**ConflictItem[]**](ConflictItem.md) |  | [optional] 
**SelectionConflictList** | [**ConflictItem[]**](ConflictItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FLRConflictsResponse = Initialize-PpdmApiReferenceFLRConflictsResponse  -CommittedConflictList null `
 -SelectionConflictList null
```

- Convert the resource to JSON
```powershell
$FLRConflictsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

