# ConnectionInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | [optional] 
**TnsAdmin** | **String** |  | [optional] 
**TnsName** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectionInfo = Initialize-PpdmApiReferenceConnectionInfo  -CredentialId null `
 -TnsAdmin null `
 -TnsName null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ConnectionInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

