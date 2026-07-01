# CommonPrismServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HostName** | **String** |  | [optional] 
**TcpPort** | **Int64** |  | [optional] 
**ThumbPrint** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 
**UserPassword** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonPrismServer = Initialize-PpdmApiReferenceCommonPrismServer  -HostName null `
 -TcpPort null `
 -ThumbPrint null `
 -UserName null `
 -UserPassword null
```

- Convert the resource to JSON
```powershell
$CommonPrismServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

