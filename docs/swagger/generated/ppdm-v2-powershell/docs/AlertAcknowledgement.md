# AlertAcknowledgement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AcknowledgeBy** | **String** | The name of the user who acknowledged the alert message. | [optional] 
**AcknowledgeState** | **String** | The acknowledgement state. | 
**AcknowledgeTime** | **System.DateTime** | The time the message was acknowledged. Follows ISO 8601. | [optional] 

## Examples

- Prepare the resource
```powershell
$AlertAcknowledgement = Initialize-PpdmApiReferenceAlertAcknowledgement  -AcknowledgeBy null `
 -AcknowledgeState null `
 -AcknowledgeTime null
```

- Convert the resource to JSON
```powershell
$AlertAcknowledgement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

