# NotificationSchemeEventPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**NotificationSchemeEventIDPayload**](NotificationSchemeEventIDPayload.md) |  | [optional] 
**Notifications** | [**NotificationSchemeNotificationDetailsPayload[]**](NotificationSchemeNotificationDetailsPayload.md) | The configuration for notification recipents | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeEventPayload = Initialize-JiraApiReferenceNotificationSchemeEventPayload  -VarEvent null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeEventPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

