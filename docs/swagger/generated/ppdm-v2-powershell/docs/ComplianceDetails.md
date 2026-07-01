# ComplianceDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ComplianceDetail[]**](ComplianceDetail.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComplianceDetails = Initialize-PpdmApiReferenceComplianceDetails  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ComplianceDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

