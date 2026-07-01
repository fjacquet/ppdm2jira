# CommonSetting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Properties** | [**CommonSettingProperty[]**](CommonSettingProperty.md) |  | 

## Examples

- Prepare the resource
```powershell
$CommonSetting = Initialize-PpdmApiReferenceCommonSetting  -Id null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$CommonSetting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

