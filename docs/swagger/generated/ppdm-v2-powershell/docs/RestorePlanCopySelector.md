# RestorePlanCopySelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FallbackStrategy** | **String** | Use the latest copy or fail the restore for the asset if no copy based on the condition is found. The default value is USE_LATEST. | [optional] 
**StorageSystemId** | **String** | The storage system ID. | [optional] 
**Type** | **String** | Use the latest copy or use an external filter to select copy. The default value is USE_LATEST. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanCopySelector = Initialize-PpdmApiReferenceRestorePlanCopySelector  -FallbackStrategy null `
 -StorageSystemId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RestorePlanCopySelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

