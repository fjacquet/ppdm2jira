# AssetsBatchDeletionRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Asset ID. | [optional] 
**Options** | [**AssetsBatchDeletionRequestBodyOptions**](AssetsBatchDeletionRequestBodyOptions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetsBatchDeletionRequestBody = Initialize-PpdmApiReferenceAssetsBatchDeletionRequestBody  -Id null `
 -Options null
```

- Convert the resource to JSON
```powershell
$AssetsBatchDeletionRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

