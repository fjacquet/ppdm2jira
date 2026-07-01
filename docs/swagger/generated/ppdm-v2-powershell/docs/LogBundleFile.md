# LogBundleFile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileName** | **String** |  | [optional] 
**SourceSystems** | **String[]** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogBundleFile = Initialize-PpdmApiReferenceLogBundleFile  -FileName null `
 -SourceSystems null `
 -Url null
```

- Convert the resource to JSON
```powershell
$LogBundleFile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

