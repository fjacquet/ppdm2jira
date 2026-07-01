# IdentityProviderLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Alive** | **Boolean** | Connectivity liveliness indicator, false when the last check failed | [optional] 
**CheckEnabled** | **Boolean** | Check enablement indicator. | [optional] 
**CheckInterval** | **String** | Connectivity check interval in ISO-8601 duration format. | [optional] 
**LastAlive** | **System.DateTime** | A moment link was alive last time. | [optional] 
**LastChecked** | **System.DateTime** | A moment connectivity was alive last time. | [optional] 
**NetworkTimeoutSeconds** | **Int32** | Timeout for a individual network request when operating on a link. | [optional] 
**OperationTimeoutSeconds** | **Int32** | Time for the whole operation to complete (For example, LDAP performing search) | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderLink = Initialize-PpdmApiReferenceIdentityProviderLink  -Alive null `
 -CheckEnabled null `
 -CheckInterval null `
 -LastAlive null `
 -LastChecked null `
 -NetworkTimeoutSeconds null `
 -OperationTimeoutSeconds null
```

- Convert the resource to JSON
```powershell
$IdentityProviderLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

