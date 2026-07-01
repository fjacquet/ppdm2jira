# StatsNotAvailableInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | For future use. | [optional] 
**AssetName** | **String** | For future use. | [optional] 
**Hostname** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatsNotAvailableInfo = Initialize-PpdmApiReferenceStatsNotAvailableInfo  -AssetId null `
 -AssetName null `
 -Hostname null `
 -Version null
```

- Convert the resource to JSON
```powershell
$StatsNotAvailableInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

