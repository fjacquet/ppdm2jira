# CopyGroupAggregate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Consistency** | **String** |  | [optional] 
**ConsistentRetentionTime** | **Boolean** | Indicates whether all the copies have the same retention time. | [optional] 
**CopyIds** | **String[]** | The copy Ids belong to the copy group. | [optional] 
**Id** | **String** | The copy group ID. | [optional] 
**SizeInBytes** | **Int64** | The size of all copies belongs to the copy group. | [optional] 
**Status** | **String** | The copy group status. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyGroupAggregate = Initialize-PpdmApiReferenceCopyGroupAggregate  -Consistency null `
 -ConsistentRetentionTime null `
 -CopyIds null `
 -Id null `
 -SizeInBytes null `
 -Status null
```

- Convert the resource to JSON
```powershell
$CopyGroupAggregate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

