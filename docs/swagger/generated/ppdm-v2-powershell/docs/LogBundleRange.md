# LogBundleRange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndDate** | **String** |  | [optional] 
**StartDate** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogBundleRange = Initialize-PpdmApiReferenceLogBundleRange  -EndDate null `
 -StartDate null
```

- Convert the resource to JSON
```powershell
$LogBundleRange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

