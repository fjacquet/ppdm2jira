# Condition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetAttributeName** | **String** |  | [optional] 
**AssetAttributeValue** | **String** |  | [optional] 
**AssetAttributeValues** | **String[]** |  | [optional] 
**Operator** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Condition = Initialize-PpdmApiReferenceCondition  -AssetAttributeName null `
 -AssetAttributeValue null `
 -AssetAttributeValues null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$Condition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

