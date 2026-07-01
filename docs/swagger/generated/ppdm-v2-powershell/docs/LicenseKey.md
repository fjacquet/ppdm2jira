# LicenseKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndDate** | **String** | The end date of the license key validity period. | [optional] 
**FeatureCode** | **String** | The code identifying the specific feature enabled by this license key. | [optional] 
**FeatureName** | **String** | The name of the feature enabled by this license key. | [optional] 
**FrontendCapacityInTB** | **Double** | The licensed frontend capacity in terabytes (for capacity-based licenses). | [optional] 
**GracePeriod** | **String** | The grace period duration for the license key after expiration. | [optional] 
**LicenseType** | **String** | The specific type of the license key. | [optional] 
**NumberOfSockets** | **Int32** | The number of CPU sockets covered by this license (for socket-based licenses). | [optional] 
**Plc** | **String** | The Product License Code associated with this license key. | [optional] 
**ProductLine** | **String** | The product line associated with this license key. | [optional] 
**StartDate** | **String** | The start date of the license key validity period. | [optional] 
**UomCode** | **String** | The Unit of Measure code for licensing purposes. | [optional] 
**UomName** | **String** | The name of the Unit of Measure for licensing purposes. | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseKey = Initialize-PpdmApiReferenceLicenseKey  -EndDate null `
 -FeatureCode null `
 -FeatureName null `
 -FrontendCapacityInTB null `
 -GracePeriod null `
 -LicenseType null `
 -NumberOfSockets null `
 -Plc null `
 -ProductLine null `
 -StartDate null `
 -UomCode null `
 -UomName null
```

- Convert the resource to JSON
```powershell
$LicenseKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

