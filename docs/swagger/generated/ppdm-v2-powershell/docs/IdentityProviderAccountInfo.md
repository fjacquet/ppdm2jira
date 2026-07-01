# IdentityProviderAccountInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Identity Provider service account username. | 
**Password** | **String** | Identity Provider service account password. | 

## Examples

- Prepare the resource
```powershell
$IdentityProviderAccountInfo = Initialize-PpdmApiReferenceIdentityProviderAccountInfo  -Name null `
 -Password null
```

- Convert the resource to JSON
```powershell
$IdentityProviderAccountInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

