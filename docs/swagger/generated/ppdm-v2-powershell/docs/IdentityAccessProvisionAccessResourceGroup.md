# IdentityAccessProvisionAccessResourceGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locator** | **String** | Resource Group locator. | [optional] 
**Name** | **String** | Resource Group name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvisionAccessResourceGroup = Initialize-PpdmApiReferenceIdentityAccessProvisionAccessResourceGroup  -Locator null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvisionAccessResourceGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

