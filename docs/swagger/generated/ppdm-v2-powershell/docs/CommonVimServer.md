# CommonVimServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncryptedUserPassword** | **Boolean** |  | [optional] 
**HostName** | **String** |  | [optional] 
**HypervisorMode** | **String** |  | [optional] 
**TcpPort** | **Int64** |  | [optional] 
**ThumbPrint** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 
**UserPassword** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonVimServer = Initialize-PpdmApiReferenceCommonVimServer  -EncryptedUserPassword null `
 -HostName null `
 -HypervisorMode null `
 -TcpPort null `
 -ThumbPrint null `
 -UserName null `
 -UserPassword null
```

- Convert the resource to JSON
```powershell
$CommonVimServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

