# ServiceLevelAgreements
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ServiceLevelAgreement[]**](ServiceLevelAgreement.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceLevelAgreements = Initialize-PpdmApiReferenceServiceLevelAgreements  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ServiceLevelAgreements | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

