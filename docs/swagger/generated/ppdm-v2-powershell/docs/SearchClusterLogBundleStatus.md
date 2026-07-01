# SearchClusterLogBundleStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LogBundlePath** | **String** | The generated log bundle. | [optional] [readonly] 
**Progress** | **Int32** | Current log bundle collection progress. | [optional] [readonly] 
**State** | **String** | Current log bundle state. | [optional] [readonly] 
**TaskId** | **String** | Task ID for the operation. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SearchClusterLogBundleStatus = Initialize-PpdmApiReferenceSearchClusterLogBundleStatus  -LogBundlePath null `
 -Progress null `
 -State null `
 -TaskId null
```

- Convert the resource to JSON
```powershell
$SearchClusterLogBundleStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

