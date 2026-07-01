# RestoreGroupNetworkSettingsMappingsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dest** | [**RestoreGroupNetworkSettingsDefaultDest**](RestoreGroupNetworkSettingsDefaultDest.md) |  | [optional] 
**Source** | [**RestoreGroupNetworkSettingsMappingsInnerSource**](RestoreGroupNetworkSettingsMappingsInnerSource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroupNetworkSettingsMappingsInner = Initialize-PpdmApiReferenceRestoreGroupNetworkSettingsMappingsInner  -Dest null `
 -Source null
```

- Convert the resource to JSON
```powershell
$RestoreGroupNetworkSettingsMappingsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

