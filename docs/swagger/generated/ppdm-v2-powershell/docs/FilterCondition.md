# FilterCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldName** | **String** |  | [optional] 
**Operator** | **String** |  | [optional] 
**Values** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterCondition = Initialize-PpdmApiReferenceFilterCondition  -FieldName null `
 -Operator null `
 -Values null
```

- Convert the resource to JSON
```powershell
$FilterCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

