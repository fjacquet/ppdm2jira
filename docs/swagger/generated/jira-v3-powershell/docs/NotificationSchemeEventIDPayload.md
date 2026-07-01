# NotificationSchemeEventIDPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The event ID to use for reference in the payload | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeEventIDPayload = Initialize-JiraApiReferenceNotificationSchemeEventIDPayload  -Id 1
```

- Convert the resource to JSON
```powershell
$NotificationSchemeEventIDPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

