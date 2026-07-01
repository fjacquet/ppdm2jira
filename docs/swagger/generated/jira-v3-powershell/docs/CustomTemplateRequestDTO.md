# CustomTemplateRequestDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BoardFeatures** | [**BoardFeaturesPayload**](BoardFeaturesPayload.md) |  | [optional] 
**Boards** | [**BoardsPayload**](BoardsPayload.md) |  | [optional] 
**Field** | [**FieldCapabilityPayload**](FieldCapabilityPayload.md) |  | [optional] 
**IssueType** | [**IssueTypeProjectCreatePayload**](IssueTypeProjectCreatePayload.md) |  | [optional] 
**Notification** | [**NotificationSchemePayload**](NotificationSchemePayload.md) |  | [optional] 
**PermissionScheme** | [**PermissionPayloadDTO**](PermissionPayloadDTO.md) |  | [optional] 
**Project** | [**ProjectPayload**](ProjectPayload.md) |  | [optional] 
**Role** | [**RolesCapabilityPayload**](RolesCapabilityPayload.md) |  | [optional] 
**Scope** | [**ScopePayload**](ScopePayload.md) |  | [optional] 
**Security** | [**SecuritySchemePayload**](SecuritySchemePayload.md) |  | [optional] 
**Workflow** | [**WorkflowCapabilityPayload**](WorkflowCapabilityPayload.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomTemplateRequestDTO = Initialize-JiraApiReferenceCustomTemplateRequestDTO  -BoardFeatures null `
 -Boards null `
 -Field null `
 -IssueType null `
 -Notification null `
 -PermissionScheme null `
 -Project null `
 -Role null `
 -Scope null `
 -Security null `
 -Workflow null
```

- Convert the resource to JSON
```powershell
$CustomTemplateRequestDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

