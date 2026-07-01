# CommonSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CommonSetting[]**](CommonSetting.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonSettings = Initialize-PpdmApiReferenceCommonSettings  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$CommonSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

