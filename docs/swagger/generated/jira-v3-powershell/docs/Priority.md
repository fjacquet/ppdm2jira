# Priority
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The avatarId of the avatar for the issue priority. This parameter is nullable and when set, this avatar references the universal avatar APIs. | [optional] 
**Description** | **String** | The description of the issue priority. | [optional] 
**IconUrl** | **String** | The URL of the icon for the issue priority. | [optional] 
**Id** | **String** | The ID of the issue priority. | [optional] 
**IsDefault** | **Boolean** | Whether this priority is the default. | [optional] 
**Name** | **String** | The name of the issue priority. | [optional] 
**Schemes** | [**ExpandPrioritySchemePage**](ExpandPrioritySchemePage.md) | Priority schemes associated with the issue priority. | [optional] 
**Self** | **String** | The URL of the issue priority. | [optional] 
**StatusColor** | **String** | The color used to indicate the issue priority. | [optional] 

## Examples

- Prepare the resource
```powershell
$Priority = Initialize-JiraApiReferencePriority  -AvatarId null `
 -Description null `
 -IconUrl null `
 -Id null `
 -IsDefault null `
 -Name null `
 -Schemes null `
 -Self null `
 -StatusColor null
```

- Convert the resource to JSON
```powershell
$Priority | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

