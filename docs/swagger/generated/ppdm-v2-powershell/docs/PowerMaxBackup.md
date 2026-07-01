# PowerMaxBackup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChildStorageGroups** | [**CopyExtendedDataChildStorageGroupsInner[]**](CopyExtendedDataChildStorageGroupsInner.md) |  | [optional] 
**ProvisionedBytes** | **Int64** |  | [optional] 
**ScriptExecution** | **String** | Indicate if pre/post script is executed. | [optional] 

## Examples

- Prepare the resource
```powershell
$PowerMaxBackup = Initialize-PpdmApiReferencePowerMaxBackup  -ChildStorageGroups null `
 -ProvisionedBytes null `
 -ScriptExecution null
```

- Convert the resource to JSON
```powershell
$PowerMaxBackup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

