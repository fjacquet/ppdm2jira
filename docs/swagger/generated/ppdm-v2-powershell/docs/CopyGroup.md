# CopyGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupBy** | [**GroupBy[]**](GroupBy.md) | An array of the selected copy attributes used to identity the unique copy group. | [optional] 
**Id** | **String** | The copy group ID. | [optional] 
**Representative** | **Boolean** | Indicates whether this is the representative copy among the copies in the copy group. | [optional] 
**TotalCopies** | **Int64** | The total copy count belongs to the copy group. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyGroup = Initialize-PpdmApiReferenceCopyGroup  -GroupBy null `
 -Id null `
 -Representative null `
 -TotalCopies null
```

- Convert the resource to JSON
```powershell
$CopyGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

