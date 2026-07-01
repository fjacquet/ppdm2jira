# LogExportRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndTime** | **String** |  | [optional] 
**FilterType** | **String** |  | 
**FilterValue** | **String** |  | 
**StartTime** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogExportRequest = Initialize-PpdmApiReferenceLogExportRequest  -EndTime null `
 -FilterType null `
 -FilterValue null `
 -StartTime null
```

- Convert the resource to JSON
```powershell
$LogExportRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

