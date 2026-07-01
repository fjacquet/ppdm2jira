# AlertMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AcknowledgedCriticalCount** | **Int32** | Number of acknowledged critical alerts. | [optional] 
**AcknowledgedInformationalCount** | **Int32** | Number of acknowledged informational alerts. | [optional] 
**AcknowledgedWarningCount** | **Int32** | Number of acknowledged warning alerts. | [optional] 
**AllCriticalCount** | **Int32** | Number of all critical alerts. | [optional] 
**AllInformationalCount** | **Int32** | Number of all informational alerts. | [optional] 
**AllWarningCount** | **Int32** | Number of all warning alerts. | [optional] 
**FromPostTime** | **System.DateTime** | The oldest alert posted in this time interval. | [optional] 
**ToPostTime** | **System.DateTime** | The latest alert posted in this time interval. | [optional] 
**TotalAcknowledgedCount** | **Int32** | Total number of acknowledged alerts. | [optional] 
**TotalAllCount** | **Int32** | Total number of all alerts. | [optional] 
**TotalUnacknowledgedCount** | **Int32** | Total number of unacknowledged alerts. | [optional] 
**UnacknowledgedCriticalCount** | **Int32** | Number of unacknowledged critical alerts. | [optional] 
**UnacknowledgedInformationalCount** | **Int32** | Number of unacknowledged informational alerts. | [optional] 
**UnacknowledgedWarningCount** | **Int32** | Number of unacknowledged warning alerts. | [optional] 

## Examples

- Prepare the resource
```powershell
$AlertMetrics = Initialize-PpdmApiReferenceAlertMetrics  -AcknowledgedCriticalCount null `
 -AcknowledgedInformationalCount null `
 -AcknowledgedWarningCount null `
 -AllCriticalCount null `
 -AllInformationalCount null `
 -AllWarningCount null `
 -FromPostTime null `
 -ToPostTime null `
 -TotalAcknowledgedCount null `
 -TotalAllCount null `
 -TotalUnacknowledgedCount null `
 -UnacknowledgedCriticalCount null `
 -UnacknowledgedInformationalCount null `
 -UnacknowledgedWarningCount null
```

- Convert the resource to JSON
```powershell
$AlertMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

