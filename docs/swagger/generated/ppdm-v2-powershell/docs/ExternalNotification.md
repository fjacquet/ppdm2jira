# ExternalNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CategoryList** | **String[]** | Enum of MessageCategory for filtering. | [optional] 
**Disabled** | **Boolean** | User can enable or disable notifications. | [optional] 
**Emails** | **String[]** | List of email addresses to send the alerts to. | [optional] 
**Id** | **String** | External notification ID. | [optional] 
**LastAlertMatchTime** | **System.DateTime** | Time that the last alert was created meeting this criteria. | [optional] 
**LastNotificationTime** | **System.DateTime** | This parameter is the date and time of the last transmission. | [optional] 
**MessageIdList** | **String[]** | Specific MessageID for filtering. | [optional] 
**Name** | **String** | Name of notification configuration. | 
**NotificationWindow** | **Int32** | This is the time frame for the PowerProtect Data Manager user to wait before sending more notifications. | [optional] 
**Protocol** | **String** | The notification protocol with the available options are SNMP/ SMTP. | [optional] 
**SeverityList** | **String[]** | Enum of MessageSeverity for filtering. | [optional] 
**Source** | [**Source**](Source.md) |  | [optional] 
**SubjectOverride** | **String** | Customer-provided subject line for outgoing notifications. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExternalNotification = Initialize-PpdmApiReferenceExternalNotification  -CategoryList null `
 -Disabled null `
 -Emails null `
 -Id null `
 -LastAlertMatchTime null `
 -LastNotificationTime null `
 -MessageIdList null `
 -Name null `
 -NotificationWindow null `
 -Protocol null `
 -SeverityList null `
 -Source null `
 -SubjectOverride null
```

- Convert the resource to JSON
```powershell
$ExternalNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

