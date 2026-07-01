# ProtectionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ProtectionDetail[]**](ProtectionDetail.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionDetails = Initialize-PpdmApiReferenceProtectionDetails  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ProtectionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

