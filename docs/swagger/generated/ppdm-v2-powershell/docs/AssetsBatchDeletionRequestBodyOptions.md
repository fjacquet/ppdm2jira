# AssetsBatchDeletionRequestBodyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | **String** | This attribute indicates asset deletion options. Valid values are the following: - DELETE_ASSET_AND_COPIES - DELETE_ASSET_WITHOUT_COPIES - MARK_ASSET_AS_DELETED_AND_RETAIN_COPIES | 

## Examples

- Prepare the resource
```powershell
$AssetsBatchDeletionRequestBodyOptions = Initialize-PpdmApiReferenceAssetsBatchDeletionRequestBodyOptions  -Level null
```

- Convert the resource to JSON
```powershell
$AssetsBatchDeletionRequestBodyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

