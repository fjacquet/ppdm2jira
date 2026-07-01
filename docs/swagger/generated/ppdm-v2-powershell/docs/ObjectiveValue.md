# ObjectiveValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**TypedValues** | [**TypedValue[]**](TypedValue.md) |  | [optional] 
**ValueCardinality** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectiveValue = Initialize-PpdmApiReferenceObjectiveValue  -CopyType null `
 -Name null `
 -TypedValues null `
 -ValueCardinality null
```

- Convert the resource to JSON
```powershell
$ObjectiveValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

