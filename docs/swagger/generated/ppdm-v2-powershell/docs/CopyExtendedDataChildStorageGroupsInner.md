# CopyExtendedDataChildStorageGroupsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The child group ID. | [optional] 
**Name** | **String** | The child group name. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyExtendedDataChildStorageGroupsInner = Initialize-PpdmApiReferenceCopyExtendedDataChildStorageGroupsInner  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CopyExtendedDataChildStorageGroupsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

