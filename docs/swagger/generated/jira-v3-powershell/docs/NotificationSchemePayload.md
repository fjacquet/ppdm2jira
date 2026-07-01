# NotificationSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the notification scheme | [optional] 
**Name** | **String** | The name of the notification scheme | [optional] 
**NotificationSchemeEvents** | [**NotificationSchemeEventPayload[]**](NotificationSchemeEventPayload.md) | The events and notifications for the notification scheme | [optional] 
**OnConflict** | **String** | The strategy to use when there is a conflict with an existing entity | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemePayload = Initialize-JiraApiReferenceNotificationSchemePayload  -Description null `
 -Name null `
 -NotificationSchemeEvents null `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$NotificationSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

