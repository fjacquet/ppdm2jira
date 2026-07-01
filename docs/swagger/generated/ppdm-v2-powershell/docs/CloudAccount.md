# CloudAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionStatus** | **String** |  | [optional] 
**ConnectionStatusMessage** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**ProviderAccountId** | **String** |  | [optional] 
**ProviderName** | **String** |  | [optional] 
**ProviderParameters** | [**ProviderParameter[]**](ProviderParameter.md) |  | [optional] 
**SecretKey** | **String** |  | [optional] 
**UserKey** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudAccount = Initialize-PpdmApiReferenceCloudAccount  -ConnectionStatus null `
 -ConnectionStatusMessage null `
 -Id null `
 -ProviderAccountId null `
 -ProviderName null `
 -ProviderParameters null `
 -SecretKey null `
 -UserKey null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$CloudAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

