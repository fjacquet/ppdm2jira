# RestorePlan
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | The time when this restore plan was created. | [optional] 
**Description** | **String** | An optional description for the restore plan. | [optional] 
**FallbackStrategy** | **String** | Define the fallback strategy when the dependent jobs fail. | [optional] 
**Id** | **String** | Unique identifier of the restore plan. | [optional] 
**LastRun** | [**LastRun**](LastRun.md) |  | [optional] 
**Name** | **String** | Unique name of the restore plan. | [optional] 
**ResourceGroupIds** | **String[]** | ID of resource groups for IBAC. | [optional] 
**RestoreGroups** | [**RestoreGroup[]**](RestoreGroup.md) |  | [optional] 
**Schedule** | [**RestorePlanSchedule**](RestorePlanSchedule.md) |  | [optional] 
**State** | **String** | The state of the restore plan. | [optional] 
**StateReason** | **String** | The state reason of the restore plan. | [optional] 
**UpdatedAt** | **System.DateTime** | The time when this restore plan was updated. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlan = Initialize-PpdmApiReferenceRestorePlan  -CreatedAt null `
 -Description null `
 -FallbackStrategy null `
 -Id null `
 -LastRun null `
 -Name null `
 -ResourceGroupIds null `
 -RestoreGroups null `
 -Schedule null `
 -State null `
 -StateReason null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$RestorePlan | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

