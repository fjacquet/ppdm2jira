# RestoreTargets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**RestoreTarget**](RestoreTarget.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreTargets = Initialize-PpdmApiReferenceRestoreTargets  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$RestoreTargets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

