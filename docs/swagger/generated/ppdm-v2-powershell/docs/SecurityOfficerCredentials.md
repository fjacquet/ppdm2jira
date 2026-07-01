# SecurityOfficerCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SecurityOfficerPassword** | **String** | password | [optional] 
**SecurityOfficerUsername** | **String** | username | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityOfficerCredentials = Initialize-PpdmApiReferenceSecurityOfficerCredentials  -SecurityOfficerPassword null `
 -SecurityOfficerUsername null
```

- Convert the resource to JSON
```powershell
$SecurityOfficerCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

