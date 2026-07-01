# DdUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of PowerProtect Data Domain. | [optional] 
**Name** | **String** |  | [optional] 
**Role** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Uid** | **Int32** | The user ID of PowerProtect Data Domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$DdUser = Initialize-PpdmApiReferenceDdUser  -Id null `
 -Name null `
 -Role null `
 -Type null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$DdUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

