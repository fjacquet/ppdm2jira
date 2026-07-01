# HostStorageAdapter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identifiers** | **String[]** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HostStorageAdapter = Initialize-PpdmApiReferenceHostStorageAdapter  -Identifiers null `
 -Type null
```

- Convert the resource to JSON
```powershell
$HostStorageAdapter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

