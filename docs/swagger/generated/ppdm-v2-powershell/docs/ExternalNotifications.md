# ExternalNotifications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ExternalNotification[]**](ExternalNotification.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExternalNotifications = Initialize-PpdmApiReferenceExternalNotifications  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ExternalNotifications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

