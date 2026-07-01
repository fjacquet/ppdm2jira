# SecurityLevelPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the security level | [optional] 
**IsDefault** | **Boolean** | Whether the security level is default for the security scheme | [optional] 
**Name** | **String** | The name of the security level | [optional] 
**SecurityLevelMembers** | [**SecurityLevelMemberPayload[]**](SecurityLevelMemberPayload.md) | The members of the security level | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityLevelPayload = Initialize-JiraApiReferenceSecurityLevelPayload  -Description Newly created issue security level `
 -IsDefault null `
 -Name New Security Level `
 -SecurityLevelMembers null
```

- Convert the resource to JSON
```powershell
$SecurityLevelPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

