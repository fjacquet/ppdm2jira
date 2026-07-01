# LogBundles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**LogBundle[]**](LogBundle.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogBundles = Initialize-PpdmApiReferenceLogBundles  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$LogBundles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

