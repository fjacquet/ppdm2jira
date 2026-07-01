# TargetSapHanaDatabaseInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationSystemId** | **String** |  | [optional] 
**AssetId** | **String** |  | [optional] 
**AssetName** | **String** |  | [optional] 
**CredsId** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**Parallelism** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetSapHanaDatabaseInfo = Initialize-PpdmApiReferenceTargetSapHanaDatabaseInfo  -ApplicationSystemId null `
 -AssetId null `
 -AssetName null `
 -CredsId null `
 -HostId null `
 -Parallelism null
```

- Convert the resource to JSON
```powershell
$TargetSapHanaDatabaseInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

