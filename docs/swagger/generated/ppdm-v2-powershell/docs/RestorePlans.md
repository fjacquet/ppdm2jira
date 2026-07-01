# RestorePlans
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**RestorePlan[]**](RestorePlan.md) | The content of restore plans. | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlans = Initialize-PpdmApiReferenceRestorePlans  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$RestorePlans | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

