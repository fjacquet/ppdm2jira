# DataDomainUserWithPassword
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**OldPassword** | **String** |  | [optional] 
**Password** | **String** |  | 
**Role** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainUserWithPassword = Initialize-PpdmApiReferenceDataDomainUserWithPassword  -Name null `
 -OldPassword null `
 -Password null `
 -Role null
```

- Convert the resource to JSON
```powershell
$DataDomainUserWithPassword | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

