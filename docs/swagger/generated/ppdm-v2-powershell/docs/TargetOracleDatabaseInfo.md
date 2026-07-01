# TargetOracleDatabaseInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationSystemId** | **String** |  | [optional] 
**AssetId** | **String** |  | [optional] 
**AssetName** | **String** |  | [optional] 
**DataTargetId** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**NfsShare** | [**TargetOracleDatabaseInfoNfsShare**](TargetOracleDatabaseInfoNfsShare.md) |  | [optional] 
**Parallelism** | **Int32** |  | [optional] 
**RestoreCategory** | **String** |  | [optional] 
**RestoreProtocol** | **String** | Oracle OIM restore protocol. | [optional] 
**TargetConnectionInfos** | [**TargetConnectionInfo[]**](TargetConnectionInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetOracleDatabaseInfo = Initialize-PpdmApiReferenceTargetOracleDatabaseInfo  -ApplicationSystemId null `
 -AssetId null `
 -AssetName null `
 -DataTargetId null `
 -HostId null `
 -NfsShare null `
 -Parallelism null `
 -RestoreCategory null `
 -RestoreProtocol null `
 -TargetConnectionInfos null
```

- Convert the resource to JSON
```powershell
$TargetOracleDatabaseInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

