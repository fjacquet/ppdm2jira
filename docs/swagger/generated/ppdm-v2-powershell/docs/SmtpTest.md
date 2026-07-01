# SmtpTest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailFrom** | **String** |  | [optional] 
**MailServer** | **String** |  | 
**Password** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Recipient** | **String** |  | 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmtpTest = Initialize-PpdmApiReferenceSmtpTest  -MailFrom null `
 -MailServer null `
 -Password null `
 -Port null `
 -Recipient null `
 -Username null
```

- Convert the resource to JSON
```powershell
$SmtpTest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

