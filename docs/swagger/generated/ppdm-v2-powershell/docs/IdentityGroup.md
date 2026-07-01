# IdentityGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Group purpose description | [optional] 
**Name** | **String** | Group Name | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityGroup = Initialize-PpdmApiReferenceIdentityGroup  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IdentityGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

