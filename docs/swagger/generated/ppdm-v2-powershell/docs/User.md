# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedDate** | **System.DateTime** | Date the user was created. | [optional] 
**EmailAddress** | **String** | A valid email address of the user. | 
**FirstName** | **String** | The first name of the user. | 
**ForcePasswordChange** | **Boolean** | Mandates the user to change their password on their first log-in. | [optional] [default to $true]
**Id** | **String** | The user ID. | [optional] 
**LastName** | **String** | The last name of the user. | 
**Password** | **String** | User password. | [optional] 
**RoleId** | **String** | Role ID. | [optional] 
**Username** | **String** | User username. | 

## Examples

- Prepare the resource
```powershell
$User = Initialize-PpdmApiReferenceUser  -CreatedDate null `
 -EmailAddress null `
 -FirstName null `
 -ForcePasswordChange null `
 -Id null `
 -LastName null `
 -Password null `
 -RoleId null `
 -Username null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

