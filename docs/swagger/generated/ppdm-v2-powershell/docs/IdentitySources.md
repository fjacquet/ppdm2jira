# IdentitySources
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**IdentitySource[]**](IdentitySource.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentitySources = Initialize-PpdmApiReferenceIdentitySources  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$IdentitySources | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

