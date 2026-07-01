# RestoreGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetSelector** | [**RestorePlanAssetSelector**](RestorePlanAssetSelector.md) |  | [optional] 
**AssetType** | **String** |  | [optional] 
**CopySelector** | [**RestorePlanCopySelector**](RestorePlanCopySelector.md) |  | [optional] 
**Description** | **String** | An optional description for the restore plan. | [optional] 
**ExtendedData** | [**VmExtendedData**](VmExtendedData.md) | The extended data. | [optional] 
**Id** | **String** | The restore group ID. | [optional] 
**Name** | **String** | Unique name of the restore group. | [optional] 
**Priority** | **Int64** | The numerical priority that is specified for the restore group or dependency. The priority number must be greater than zero. A smaller value represents a higher priority (for example, 1 is a higher priority than 2). | [optional] [default to 1]
**RestoreType** | **String** | The restore type. Valid values are the following: TO_PRODUCTION TO_ALTERNATE | [optional] 
**State** | **String** |  | [optional] 
**StateReason** | **String** | The state reason of the restore group. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroup = Initialize-PpdmApiReferenceRestoreGroup  -AssetSelector null `
 -AssetType null `
 -CopySelector null `
 -Description null `
 -ExtendedData null `
 -Id null `
 -Name null `
 -Priority null `
 -RestoreType null `
 -State null `
 -StateReason null
```

- Convert the resource to JSON
```powershell
$RestoreGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

