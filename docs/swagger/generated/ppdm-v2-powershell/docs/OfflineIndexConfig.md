# OfflineIndexConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupLimit** | **Int32** |  | [optional] 
**Interval** | **Int64** |  | [optional] 
**StartHour** | **Int32** |  | [optional] 
**StartMinute** | **Int32** |  | [optional] 
**StartSecond** | **Int32** |  | [optional] 
**Window** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OfflineIndexConfig = Initialize-PpdmApiReferenceOfflineIndexConfig  -BackupLimit null `
 -Interval null `
 -StartHour null `
 -StartMinute null `
 -StartSecond null `
 -Window null
```

- Convert the resource to JSON
```powershell
$OfflineIndexConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

