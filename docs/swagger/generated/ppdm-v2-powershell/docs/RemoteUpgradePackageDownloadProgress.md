# RemoteUpgradePackageDownloadProgress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorMsg** | **String** |  | [optional] 
**PercentageCompleted** | **Double** |  | [optional] 
**TransferRate** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoteUpgradePackageDownloadProgress = Initialize-PpdmApiReferenceRemoteUpgradePackageDownloadProgress  -ErrorMsg null `
 -PercentageCompleted null `
 -TransferRate null
```

- Convert the resource to JSON
```powershell
$RemoteUpgradePackageDownloadProgress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

