# FieldLayoutConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **Boolean** | Whether to show the field | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Required** | **Boolean** | Whether the field is required | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldLayoutConfiguration = Initialize-JiraApiReferenceFieldLayoutConfiguration  -Field null `
 -Pcri null `
 -Required null
```

- Convert the resource to JSON
```powershell
$FieldLayoutConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

