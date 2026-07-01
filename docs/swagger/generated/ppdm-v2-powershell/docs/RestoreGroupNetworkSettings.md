# RestoreGroupNetworkSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | [**RestoreGroupNetworkSettingsDefault**](RestoreGroupNetworkSettingsDefault.md) |  | [optional] 
**Mappings** | [**RestoreGroupNetworkSettingsMappingsInner[]**](RestoreGroupNetworkSettingsMappingsInner.md) |  | [optional] 
**ReconnectNic** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroupNetworkSettings = Initialize-PpdmApiReferenceRestoreGroupNetworkSettings  -Default null `
 -Mappings null `
 -ReconnectNic null
```

- Convert the resource to JSON
```powershell
$RestoreGroupNetworkSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

