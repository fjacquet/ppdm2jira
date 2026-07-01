# Connection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Addresses** | [**ConnectionAddress[]**](ConnectionAddress.md) |  | [optional] 
**CredentialId** | **String** |  | 
**ExtraParams** | [**ExtraParam[]**](ExtraParam.md) |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Protocol** | **String** |  | 
**Secure** | **Boolean** |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Connection = Initialize-PpdmApiReferenceConnection  -Addresses null `
 -CredentialId null `
 -ExtraParams null `
 -Port null `
 -Protocol null `
 -Secure null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Connection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

