# ComplianceResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompletionTime** | **System.DateTime** |  | [optional] 
**Id** | **String** |  | [optional] 
**NextStartTime** | **System.DateTime** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**State** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**VerifiedObjectives** | [**VerifiedObjective[]**](VerifiedObjective.md) |  | [optional] 
**WindowEndTime** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComplianceResult = Initialize-PpdmApiReferenceComplianceResult  -CompletionTime null `
 -Id null `
 -NextStartTime null `
 -StartTime null `
 -State null `
 -Status null `
 -VerifiedObjectives null `
 -WindowEndTime null
```

- Convert the resource to JSON
```powershell
$ComplianceResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

