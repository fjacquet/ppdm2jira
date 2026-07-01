# ProjectCreateResourceIdentifier
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnID** | **Boolean** |  | [optional] 
**Areference** | **Boolean** |  | [optional] 
**EntityId** | **String** |  | [optional] 
**EntityType** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectCreateResourceIdentifier = Initialize-JiraApiReferenceProjectCreateResourceIdentifier  -AnID null `
 -Areference null `
 -EntityId null `
 -EntityType null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProjectCreateResourceIdentifier | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

