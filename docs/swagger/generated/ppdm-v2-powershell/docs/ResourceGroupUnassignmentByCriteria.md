# ResourceGroupUnassignmentByCriteria
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetTypes** | **String[]** |  | 
**ResourceGroupId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ResourceGroupUnassignmentByCriteria = Initialize-PpdmApiReferenceResourceGroupUnassignmentByCriteria  -AssetTypes null `
 -ResourceGroupId null
```

- Convert the resource to JSON
```powershell
$ResourceGroupUnassignmentByCriteria | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

