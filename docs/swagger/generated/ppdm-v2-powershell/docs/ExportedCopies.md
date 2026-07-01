# ExportedCopies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ExportedCopy[]**](ExportedCopy.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedCopies = Initialize-PpdmApiReferenceExportedCopies  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ExportedCopies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

