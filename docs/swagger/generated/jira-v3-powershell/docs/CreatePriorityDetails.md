# CreatePriorityDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The ID for the avatar for the priority. Either the iconUrl or avatarId must be defined, but not both. This parameter is nullable and will become mandatory once the iconUrl parameter is deprecated. | [optional] 
**Description** | **String** | The description of the priority. | [optional] 
**IconUrl** | **String** | The URL of an icon for the priority. Accepted protocols are HTTP and HTTPS. Built in icons can also be used. Either the iconUrl or avatarId must be defined, but not both. | [optional] 
**Name** | **String** | The name of the priority. Must be unique. | 
**StatusColor** | **String** | The status color of the priority in 3-digit or 6-digit hexadecimal format. | 

## Examples

- Prepare the resource
```powershell
$CreatePriorityDetails = Initialize-JiraApiReferenceCreatePriorityDetails  -AvatarId null `
 -Description null `
 -IconUrl null `
 -Name null `
 -StatusColor null
```

- Convert the resource to JSON
```powershell
$CreatePriorityDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

