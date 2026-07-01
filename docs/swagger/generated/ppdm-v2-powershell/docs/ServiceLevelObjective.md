# ServiceLevelObjective
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the service level objective. | [optional] 
**Id** | **String** | ID of the service level objective. | [optional] 
**Mandatory** | **Boolean** |  | [optional] 
**Name** | **String** | Name of the service level objective. | [optional] 
**Order** | **Int32** |  | [optional] 
**RuleExecutionClass** | **String** |  | [optional] 
**StageType** | **String** | Stage type of the service level objective. | [optional] 
**ValueCardinality** | **String** | Value cardinality of the service level objective. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceLevelObjective = Initialize-PpdmApiReferenceServiceLevelObjective  -Description null `
 -Id null `
 -Mandatory null `
 -Name null `
 -Order null `
 -RuleExecutionClass null `
 -StageType null `
 -ValueCardinality null
```

- Convert the resource to JSON
```powershell
$ServiceLevelObjective | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

