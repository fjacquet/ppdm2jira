# ServiceLevelAgreementSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OutOfComplianceAssets** | **Int64** |  | [optional] 
**OutOfComplianceObjectives** | **Int64** |  | [optional] 
**PoliciesAtRisk** | **Int64** |  | [optional] 
**TotalAssets** | **Int64** |  | [optional] 
**TotalPolicies** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceLevelAgreementSummary = Initialize-PpdmApiReferenceServiceLevelAgreementSummary  -OutOfComplianceAssets null `
 -OutOfComplianceObjectives null `
 -PoliciesAtRisk null `
 -TotalAssets null `
 -TotalPolicies null
```

- Convert the resource to JSON
```powershell
$ServiceLevelAgreementSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

