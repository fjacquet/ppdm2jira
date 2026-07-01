# ServiceLevelObjectiveConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActiveEnforcement** | **Boolean** |  | [optional] 
**AssetType** | **String** | The asset type for the predefined service level object. | [optional] [readonly] 
**DefinitionId** | **String** | The ID of the predefined service level object. | [optional] 
**InUse** | **Boolean** | Indicates whether the service level objective is in use. | [optional] 
**Name** | **String** | The name of the predefined service level object. | [optional] 
**StageType** | **String** | The stage type of the predefined service level objects. | [optional] 
**ValuesList** | [**ObjectiveValue[]**](ObjectiveValue.md) | Values that belong to the service level objective. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceLevelObjectiveConfiguration = Initialize-PpdmApiReferenceServiceLevelObjectiveConfiguration  -ActiveEnforcement null `
 -AssetType null `
 -DefinitionId null `
 -InUse null `
 -Name null `
 -StageType null `
 -ValuesList null
```

- Convert the resource to JSON
```powershell
$ServiceLevelObjectiveConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

