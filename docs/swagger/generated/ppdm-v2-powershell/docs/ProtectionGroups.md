# ProtectionGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ProtectionGroup[]**](ProtectionGroup.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionGroups = Initialize-PpdmApiReferenceProtectionGroups  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ProtectionGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

