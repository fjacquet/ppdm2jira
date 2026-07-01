# IdentityAccessProvisionAccessRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** | Role display name. | [optional] 
**Locator** | **String** | Role locator. | [optional] 
**Name** | **String** | Role name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvisionAccessRole = Initialize-PpdmApiReferenceIdentityAccessProvisionAccessRole  -DisplayName null `
 -Locator null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvisionAccessRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

