# UpdatePriorityDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The ID for the avatar for the priority. This parameter is nullable and both iconUrl and avatarId cannot be defined. | [optional] 
**Description** | **String** | The description of the priority. | [optional] 
**IconUrl** | **String** | The URL of an icon for the priority. Accepted protocols are HTTP and HTTPS. Built in icons can also be used. Both iconUrl and avatarId cannot be defined. | [optional] 
**Name** | **String** | The name of the priority. Must be unique. | [optional] 
**StatusColor** | **String** | The status color of the priority in 3-digit or 6-digit hexadecimal format. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdatePriorityDetails = Initialize-JiraApiReferenceUpdatePriorityDetails  -AvatarId null `
 -Description null `
 -IconUrl null `
 -Name null `
 -StatusColor null
```

- Convert the resource to JSON
```powershell
$UpdatePriorityDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

