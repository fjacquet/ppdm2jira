# Alert
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acknowledgement** | [**AlertAcknowledgement**](AlertAcknowledgement.md) |  | [optional] 
**ActivitiesCount** | **Int32** | Number of related jobs. | [optional] 
**BlockedActions** | **String[]** |  | [optional] 
**Category** | **String** | The category of the alert message. | [optional] 
**CustomDetails** | [**NameValuePairString[]**](NameValuePairString.md) |  | [optional] 
**DetailSummaries** | [**AlertDetailSummary[]**](AlertDetailSummary.md) | The details from individual task. This field is deprecated. Use &#x60;activitiesCount&#x60; to get the number of associated activities, or query the activities API to get more information. | [optional] 
**DetailedDescription** | **String** | The detailed description of the alert message. | [optional] 
**Email** | **Boolean** | This parameter is true if the alert message can generate an email. | [optional] 
**Esrs** | **Boolean** | This parameter is true if the alert message is sent by ESRS to  the support team. | [optional] 
**Excluded** | **Boolean** | If the alert message is displayed in the Alert UI by default, the value of this property is false. | [optional] 
**ExternalId** | **String** | If this alert belongs to an external system, the external ID points to the alert ID on that system. | [optional] 
**HardwareInfo** | [**HardwareInfo**](HardwareInfo.md) |  | [optional] 
**Id** | **String** | ID of the alert. | 
**JobId** | **String** | The job ID associated to the alert message. | [optional] 
**LastOccurrenceTime** | **System.DateTime** | The date and time when the most recent alert message is received. | [optional] 
**Message** | **String** | The message that the variable values are substituted with message arguments. | [optional] 
**MessageArgs** | **String[]** | The alert message arguments are the values for any substitution variables that are defined as part of the message. | [optional] 
**MessageID** | **String** | The unique message ID. | [optional] 
**PostedTime** | **System.DateTime** | The created time of the alert message. | [optional] 
**Resource** | [**EntityMessageResource**](EntityMessageResource.md) |  | [optional] 
**ResponseAction** | **String** | The response action for this alert message. | [optional] 
**Severity** | **String** | The severity of the alert message. | [optional] 
**Source** | [**MessageSource**](MessageSource.md) |  | [optional] 
**Subcategory** | **String** | The subcategory of the alert message. | [optional] 
**SupportDetails** | **String** | Additional low level details for support. | [optional] 
**TaskId** | **String** | The task ID that is associated with the alert message. | [optional] 
**UserNote** | [**UserNote**](UserNote.md) |  | [optional] 
**Visibility** | **Boolean** | This is true if the alert message is visible for the users. | [optional] 

## Examples

- Prepare the resource
```powershell
$Alert = Initialize-PpdmApiReferenceAlert  -Acknowledgement null `
 -ActivitiesCount null `
 -BlockedActions null `
 -Category null `
 -CustomDetails null `
 -DetailSummaries null `
 -DetailedDescription null `
 -Email null `
 -Esrs null `
 -Excluded null `
 -ExternalId null `
 -HardwareInfo null `
 -Id null `
 -JobId null `
 -LastOccurrenceTime null `
 -Message null `
 -MessageArgs null `
 -MessageID null `
 -PostedTime null `
 -Resource null `
 -ResponseAction null `
 -Severity null `
 -Source null `
 -Subcategory null `
 -SupportDetails null `
 -TaskId null `
 -UserNote null `
 -Visibility null
```

- Convert the resource to JSON
```powershell
$Alert | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

