# Assets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Asset[]**](Asset.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Assets = Initialize-PpdmApiReferenceAssets  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Assets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

