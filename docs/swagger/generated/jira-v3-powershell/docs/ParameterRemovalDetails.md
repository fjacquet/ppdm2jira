# ParameterRemovalDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Parameters** | **String[]** | Set of parameter names to remove | [optional] 
**SchemeId** | **Int64** | ID of the field scheme | [optional] 
**WorkTypeIds** | **Int64[]** | Set of work type (issue type) IDs | [optional] 

## Examples

- Prepare the resource
```powershell
$ParameterRemovalDetails = Initialize-JiraApiReferenceParameterRemovalDetails  -Parameters null `
 -SchemeId null `
 -WorkTypeIds null
```

- Convert the resource to JSON
```powershell
$ParameterRemovalDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

