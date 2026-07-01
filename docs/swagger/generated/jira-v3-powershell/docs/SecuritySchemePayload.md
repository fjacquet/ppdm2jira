# SecuritySchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the security scheme | [optional] 
**Name** | **String** | The name of the security scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**SecurityLevels** | [**SecurityLevelPayload[]**](SecurityLevelPayload.md) | The security levels for the security scheme | [optional] 

## Examples

- Prepare the resource
```powershell
$SecuritySchemePayload = Initialize-JiraApiReferenceSecuritySchemePayload  -Description Newly created issue security scheme `
 -Name New Security Scheme `
 -Pcri null `
 -SecurityLevels null
```

- Convert the resource to JSON
```powershell
$SecuritySchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

