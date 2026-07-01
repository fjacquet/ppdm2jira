# SearchClusterConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity ID for the operation | [optional] 
**IndexRetentionDays** | **Int32** | Days after which the indexing catalog should be deleted. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchClusterConfig = Initialize-PpdmApiReferenceSearchClusterConfig  -ActivityId null `
 -IndexRetentionDays null
```

- Convert the resource to JSON
```powershell
$SearchClusterConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

