# Smtp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**IsStartTls** | **Boolean** |  | [optional] 
**MailFrom** | **String** |  | [optional] 
**MailServer** | **String** |  | 
**Password** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Smtp = Initialize-PpdmApiReferenceSmtp  -Id null `
 -IsStartTls null `
 -MailFrom null `
 -MailServer null `
 -Password null `
 -Port null `
 -Recipient null `
 -Username null
```

- Convert the resource to JSON
```powershell
$Smtp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

