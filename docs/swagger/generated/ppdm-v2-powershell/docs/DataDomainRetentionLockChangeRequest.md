# DataDomainRetentionLockChangeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**RetentionLockType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainRetentionLockChangeRequest = Initialize-PpdmApiReferenceDataDomainRetentionLockChangeRequest  -Enabled null `
 -RetentionLockType null
```

- Convert the resource to JSON
```powershell
$DataDomainRetentionLockChangeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

