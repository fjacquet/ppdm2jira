# DataTargets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**DataTarget[]**](DataTarget.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataTargets = Initialize-PpdmApiReferenceDataTargets  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$DataTargets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

