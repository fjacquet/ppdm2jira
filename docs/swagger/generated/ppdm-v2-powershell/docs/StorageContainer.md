# StorageContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CloudAccountId** | **String** | ID of cloud account. | [optional] 
**Id** | **String** |  | [optional] 
**Location** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageContainer = Initialize-PpdmApiReferenceStorageContainer  -CloudAccountId null `
 -Id null `
 -Location null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StorageContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

