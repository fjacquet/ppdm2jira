# IdentityAccessProvisionAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceGroup** | [**IdentityAccessProvisionAccessResourceGroup**](IdentityAccessProvisionAccessResourceGroup.md) |  | [optional] 
**Role** | [**IdentityAccessProvisionAccessRole**](IdentityAccessProvisionAccessRole.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvisionAccess = Initialize-PpdmApiReferenceIdentityAccessProvisionAccess  -ResourceGroup null `
 -Role null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvisionAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

