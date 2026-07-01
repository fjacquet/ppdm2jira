# Credential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConsumersCount** | **Int32** | The total number of consumers using this credential. | [optional] 
**CreatedByUser** | [**CredentialCreatedByUser**](CredentialCreatedByUser.md) |  | [optional] 
**ExtraInfo** | [**CredentialExtraInfo[]**](CredentialExtraInfo.md) | Additional information about the credential. | [optional] 
**Id** | **String** | The ID of credential. | [optional] 
**Internal** | **Boolean** | The internal credential is created by PowerProtect Data Manager instead of by users. | [optional] 
**Method** | **String** | The credential method. | [optional] 
**Name** | **String** | The name of credential. | 
**OriginId** | **String** | The ID of the document in the origin PPDM system. | [optional] 
**Password** | **String** | The password of credential account. | [optional] 
**SecretId** | **String** | The ID that points to secret entry in lockbox that stores the password. | [optional] [readonly] 
**SystemId** | **String** | The ID of the remote or local PPDM system. | [optional] 
**Type** | **String** | The type of credential account. | 
**Username** | **String** | The username of credential account. | 

## Examples

- Prepare the resource
```powershell
$Credential = Initialize-PpdmApiReferenceCredential  -ConsumersCount null `
 -CreatedByUser null `
 -ExtraInfo null `
 -Id null `
 -Internal null `
 -Method null `
 -Name null `
 -OriginId null `
 -Password null `
 -SecretId null `
 -SystemId null `
 -Type null `
 -Username null
```

- Convert the resource to JSON
```powershell
$Credential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

