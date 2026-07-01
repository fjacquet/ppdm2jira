# SlaMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetMetrics** | [**AssetMetric[]**](AssetMetric.md) | Asset-level metrics. | [optional] 
**EndTime** | **System.DateTime** | Metrics end time. | [optional] 
**FailedSlaCount** | **Int64** | Number of failed Service Level Agreements. | [optional] 
**InComplianceAssetCount** | **Int64** | Number of assets in compliance. | [optional] 
**InCompliancePolicyCount** | **Int32** | Number of policies in compliance. | [optional] 
**OutOfComplianceAssetCapacity** | **Double** | Capacity of assets out of compliance. | [optional] 
**OutOfComplianceAssetCount** | **Int64** | Number of assets out of compliance. | [optional] 
**OutOfCompliancePolicyCount** | **Int32** | Number of policies out of compliance. | [optional] 
**StartTime** | **System.DateTime** | Metrics start time. | [optional] 

## Examples

- Prepare the resource
```powershell
$SlaMetrics = Initialize-PpdmApiReferenceSlaMetrics  -AssetMetrics null `
 -EndTime null `
 -FailedSlaCount null `
 -InComplianceAssetCount null `
 -InCompliancePolicyCount null `
 -OutOfComplianceAssetCapacity null `
 -OutOfComplianceAssetCount null `
 -OutOfCompliancePolicyCount null `
 -StartTime null
```

- Convert the resource to JSON
```powershell
$SlaMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

