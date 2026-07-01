# DeployStageStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeployStage** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeployStageStatus = Initialize-PpdmApiReferenceDeployStageStatus  -DeployStage null `
 -Status null
```

- Convert the resource to JSON
```powershell
$DeployStageStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

