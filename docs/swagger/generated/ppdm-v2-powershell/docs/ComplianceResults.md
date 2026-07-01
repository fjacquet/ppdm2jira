# ComplianceResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ComplianceResult[]**](ComplianceResult.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComplianceResults = Initialize-PpdmApiReferenceComplianceResults  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ComplianceResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

