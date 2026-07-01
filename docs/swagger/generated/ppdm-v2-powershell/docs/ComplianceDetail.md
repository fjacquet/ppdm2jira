# ComplianceDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** |  | [optional] 
**AssetName** | **String** |  | [optional] 
**CompletionStatus** | **String** |  | [optional] 
**CompletionTime** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**FailedObjectiveList** | [**FailedObjective[]**](FailedObjective.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**NextStartTime** | **System.DateTime** |  | [optional] 
**ObjectiveCount** | **Int64** |  | [optional] 
**ObjectiveFailedNameList** | **String[]** |  | [optional] 
**ObjectiveSuccessCount** | **Int64** |  | [optional] 
**ObjectiveSuccessNameList** | **String[]** |  | [optional] 
**PlcId** | **String** |  | [optional] 
**PolicyName** | **String** |  | [optional] 
**ProtectionPolicyId** | **String** |  | [optional] 
**SlaId** | **String** |  | [optional] 
**StageId** | **String** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**Status** | **String** |  | [optional] 
**WindowEndTime** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComplianceDetail = Initialize-PpdmApiReferenceComplianceDetail  -AssetId null `
 -AssetName null `
 -CompletionStatus null `
 -CompletionTime null `
 -CreatedAt null `
 -FailedObjectiveList null `
 -Id null `
 -NextStartTime null `
 -ObjectiveCount null `
 -ObjectiveFailedNameList null `
 -ObjectiveSuccessCount null `
 -ObjectiveSuccessNameList null `
 -PlcId null `
 -PolicyName null `
 -ProtectionPolicyId null `
 -SlaId null `
 -StageId null `
 -StartTime null `
 -Status null `
 -WindowEndTime null
```

- Convert the resource to JSON
```powershell
$ComplianceDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

