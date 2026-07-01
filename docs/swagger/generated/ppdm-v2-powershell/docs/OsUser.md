# OsUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | A description or additional information about the operating system user. | [optional] 
**ExpirationDays** | **Int32** | The total duration in days for which the password remains valid. A value of -1 indicates no expiration. | [optional] 
**NewPassword** | **String** | The new password to be set for the operating system user. | [optional] 
**NumberOfDaysToExpire** | **Int32** | The number of days until the current password expires. | [optional] 
**Password** | **String** | The current password for the operating system user. | [optional] 
**RemainingExpirationDays** | **Int32** | The remaining number of days until the password expires. | [optional] 
**UserName** | **String** | The username of the operating system user. | 

## Examples

- Prepare the resource
```powershell
$OsUser = Initialize-PpdmApiReferenceOsUser  -Description null `
 -ExpirationDays null `
 -NewPassword null `
 -NumberOfDaysToExpire null `
 -Password null `
 -RemainingExpirationDays null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$OsUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

