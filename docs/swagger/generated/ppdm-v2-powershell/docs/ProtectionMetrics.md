# ProtectionMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllAssets** | **Int64** | Count of all protectable assets. | [optional] 
**CapacityAllAssets** | **Double** | Sum of asset size for all protectable assets. | [optional] 
**CapacityExcludedAssets** | **Double** | Sum of asset size for excluded assets. | [optional] 
**CapacityProtectedAssets** | **Double** | Sum of asset size for protected assets. | [optional] 
**CapacityUnprotectedAssets** | **Double** | Sum of asset size for unprotected assets. | [optional] 
**CapacityUsageAllAssets** | **Double** | Sum of Front End TeraByte (FETB) of all protectable assets having one or more copies. | [optional] 
**ExcludedAssets** | **Int64** | Count of assets in exclusion policies. | [optional] 
**ExclusionPolicies** | **Int32** | Count of policies of type EXCLUSION. | [optional] 
**ProtectedAssets** | **Int64** | Count of assets in protection policies. | [optional] 
**ProtectionPolicies** | **Int32** | Count of protection policies. | [optional] 
**UnprotectedAssets** | **Int64** | Protectable assets not in any policy. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionMetrics = Initialize-PpdmApiReferenceProtectionMetrics  -AllAssets null `
 -CapacityAllAssets null `
 -CapacityExcludedAssets null `
 -CapacityProtectedAssets null `
 -CapacityUnprotectedAssets null `
 -CapacityUsageAllAssets null `
 -ExcludedAssets null `
 -ExclusionPolicies null `
 -ProtectedAssets null `
 -ProtectionPolicies null `
 -UnprotectedAssets null
```

- Convert the resource to JSON
```powershell
$ProtectionMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

