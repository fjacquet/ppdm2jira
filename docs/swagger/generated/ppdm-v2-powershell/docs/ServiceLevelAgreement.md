# ServiceLevelAgreement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Associations** | [**Association[]**](Association.md) | The associations between policies and SLA. | [optional] 
**CreatedAt** | **System.DateTime** | The time when this service level agreement was created. | [optional] 
**Description** | **String** | The description of this service level agreement. | [optional] 
**Enabled** | **Boolean** | The status of the service level agreement. | [optional] 
**Id** | **String** | The ID of this service level agreement. | [optional] 
**Name** | **String** | The name of this service level agreement. | [optional] 
**ServiceLevelObjectives** | [**ServiceLevelObjectiveConfiguration[]**](ServiceLevelObjectiveConfiguration.md) | The service level objectives that are contained in this service level agreement. | [optional] 
**StageType** | **String** | The stage type for which this service level agreement is applicable. | [optional] 
**Summary** | [**ServiceLevelAgreementSummary**](ServiceLevelAgreementSummary.md) |  | [optional] 
**UpdatedAt** | **System.DateTime** | The time when this service level agreement was updated. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceLevelAgreement = Initialize-PpdmApiReferenceServiceLevelAgreement  -Associations null `
 -CreatedAt null `
 -Description null `
 -Enabled null `
 -Id null `
 -Name null `
 -ServiceLevelObjectives null `
 -StageType null `
 -Summary null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ServiceLevelAgreement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

