# DataDomainProtectionPolicyDataDomainMTree
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppOptimizedCompression** | **String** |  | [optional] 
**HardCapacityQuotaLevel** | **Int64** |  | [optional] 
**HardStreamQuotaLevel** | **Int64** |  | [optional] 
**Name** | **String** |  | [optional] 
**SoftCapacityQuotaLevel** | **Int64** |  | [optional] 
**SoftStreamQuotaLevel** | **Int64** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainProtectionPolicyDataDomainMTree = Initialize-PpdmApiReferenceDataDomainProtectionPolicyDataDomainMTree  -AppOptimizedCompression null `
 -HardCapacityQuotaLevel null `
 -HardStreamQuotaLevel null `
 -Name null `
 -SoftCapacityQuotaLevel null `
 -SoftStreamQuotaLevel null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DataDomainProtectionPolicyDataDomainMTree | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

