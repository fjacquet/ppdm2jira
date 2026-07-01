# DataTargetDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Replica** | **Boolean** | Indicates if current data target is a replica of another data target. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DataTargetDetails = Initialize-PpdmApiReferenceDataTargetDetails  -Replica null
```

- Convert the resource to JSON
```powershell
$DataTargetDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

