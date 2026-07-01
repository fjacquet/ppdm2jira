# Association
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectiveId** | **String** | The ID of the policy objective which is associated with this SLA. Required when the type is OBJECTIVE. | [optional] 
**PolicyId** | **String** | The ID of the policy which is associated with this SLA. Required when the type is POLICY or OBJECTIVE. | [optional] 
**Type** | **String** | SLA can be used by Policy or Policy&#39;s objective. | [optional] 

## Examples

- Prepare the resource
```powershell
$Association = Initialize-PpdmApiReferenceAssociation  -ObjectiveId null `
 -PolicyId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Association | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

