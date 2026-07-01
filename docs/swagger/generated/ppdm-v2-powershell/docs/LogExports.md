# LogExports
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**LogExport[]**](LogExport.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogExports = Initialize-PpdmApiReferenceLogExports  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$LogExports | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

