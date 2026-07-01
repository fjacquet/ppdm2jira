# LocalIdentityAuthEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountLocator** | **String** | Account locator | [optional] 
**AccountName** | **String** | Account name | [optional] 
**AccountPassword** | **String** | Account password | [optional] 
**AvailableSince** | **System.DateTime** | Date time when the auth entry was created. | [optional] 
**Enabled** | **Boolean** | Indicates whether the account is enabled. | [optional] [default to $true]
**ForceChange** | **Boolean** | Force password change on the next login | [optional] [default to $true]
**LastModified** | **System.DateTime** | Date time when the auth entry was last modified. | [optional] 
**LastPasswordChangeTimestamp** | **System.DateTime** | Timestamp when the password was last changed. | [optional] 
**Locator** | **String** | Authentication Entry locator. | [optional] 
**Locked** | **Boolean** | Indicates whether the account is locked. | [optional] [default to $false]
**PasswordExpirationTimestamp** | **System.DateTime** | Timestamp when the password expires. | [optional] 

## Examples

- Prepare the resource
```powershell
$LocalIdentityAuthEntry = Initialize-PpdmApiReferenceLocalIdentityAuthEntry  -AccountLocator null `
 -AccountName null `
 -AccountPassword null `
 -AvailableSince null `
 -Enabled null `
 -ForceChange null `
 -LastModified null `
 -LastPasswordChangeTimestamp null `
 -Locator null `
 -Locked null `
 -PasswordExpirationTimestamp null
```

- Convert the resource to JSON
```powershell
$LocalIdentityAuthEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

