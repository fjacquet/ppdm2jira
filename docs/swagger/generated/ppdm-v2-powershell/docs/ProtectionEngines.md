# ProtectionEngines
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ProtectionEngine[]**](ProtectionEngine.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionEngines = Initialize-PpdmApiReferenceProtectionEngines  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ProtectionEngines | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

