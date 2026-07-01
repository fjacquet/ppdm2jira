# CloudTarget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopiesStorageContainer** | [**StorageContainer**](StorageContainer.md) |  | [optional] 
**EncryptionMethod** | **String** |  | [optional] 
**Id** | **String** | ID of Cloud DR target. | [optional] 
**Name** | **String** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudTarget = Initialize-PpdmApiReferenceCloudTarget  -CopiesStorageContainer null `
 -EncryptionMethod null `
 -Id null `
 -Name null `
 -State null
```

- Convert the resource to JSON
```powershell
$CloudTarget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

