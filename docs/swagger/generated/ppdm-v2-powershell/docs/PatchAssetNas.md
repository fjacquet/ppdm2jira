# PatchAssetNas
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PrefetcherEnabled** | **Boolean** | Enables the Network Attached Storage (NAS) performance enhancement to handle NAS shares with many small files more efficiently. | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetNas = Initialize-PpdmApiReferencePatchAssetNas  -PrefetcherEnabled null
```

- Convert the resource to JSON
```powershell
$PatchAssetNas | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

