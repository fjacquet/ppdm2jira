# NotificationSchemeNotificationDetailsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotificationType** | **String** | The type of notification. | [optional] 
**Parameter** | **String** | The parameter of the notification, should be eiither null if not required, or PCRI. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeNotificationDetailsPayload = Initialize-JiraApiReferenceNotificationSchemeNotificationDetailsPayload  -NotificationType null `
 -Parameter null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeNotificationDetailsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

