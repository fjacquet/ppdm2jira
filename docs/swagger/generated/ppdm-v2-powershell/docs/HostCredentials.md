# HostCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HostName** | **String** |  | 
**UserName** | **String** |  | 
**UserPassword** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$HostCredentials = Initialize-PpdmApiReferenceHostCredentials  -HostName null `
 -UserName null `
 -UserPassword null
```

- Convert the resource to JSON
```powershell
$HostCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

