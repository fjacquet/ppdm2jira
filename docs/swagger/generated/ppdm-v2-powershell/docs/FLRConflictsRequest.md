# FLRConflictsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommittedTargetList** | [**FLRItem[]**](FLRItem.md) |  | [optional] 
**SelectedTargetList** | [**FLRItem[]**](FLRItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FLRConflictsRequest = Initialize-PpdmApiReferenceFLRConflictsRequest  -CommittedTargetList null `
 -SelectedTargetList null
```

- Convert the resource to JSON
```powershell
$FLRConflictsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

