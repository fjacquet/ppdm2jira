# StorageHost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**OsType** | **String** |  | [optional] 
**PortType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageHost = Initialize-PpdmApiReferenceStorageHost  -Id null `
 -Name null `
 -OsType null `
 -PortType null
```

- Convert the resource to JSON
```powershell
$StorageHost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

