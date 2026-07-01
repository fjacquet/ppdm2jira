# VerifiedObjective
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyType** | **String** |  | [optional] 
**EndTime** | **System.DateTime** |  | [optional] 
**Failure** | [**Failure**](Failure.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**SlaId** | **String** |  | [optional] 
**StageId** | **String** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**Status** | **String** |  | [optional] 
**Success** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VerifiedObjective = Initialize-PpdmApiReferenceVerifiedObjective  -CopyType null `
 -EndTime null `
 -Failure null `
 -Name null `
 -SlaId null `
 -StageId null `
 -StartTime null `
 -Status null `
 -Success null
```

- Convert the resource to JSON
```powershell
$VerifiedObjective | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

