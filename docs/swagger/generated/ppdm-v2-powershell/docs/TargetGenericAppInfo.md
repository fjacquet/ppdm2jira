# TargetGenericAppInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** |  | [optional] 
**AssetName** | **String** |  | [optional] 
**CredsId** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**Parallelism** | **Int32** |  | [optional] 
**RestoreProtocol** | **String** | Generic App restore protocol. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetGenericAppInfo = Initialize-PpdmApiReferenceTargetGenericAppInfo  -AssetId null `
 -AssetName null `
 -CredsId null `
 -HostId null `
 -Parallelism null `
 -RestoreProtocol null
```

- Convert the resource to JSON
```powershell
$TargetGenericAppInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

