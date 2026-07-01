# ResourceBatchRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceId** | **String** |  | [optional] 
**ResourceType** | **String** | Type of the resource. | 
**Rule** | [**ResourceGroupRule**](ResourceGroupRule.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceBatchRequestBody = Initialize-PpdmApiReferenceResourceBatchRequestBody  -ResourceId null `
 -ResourceType null `
 -Rule null
```

- Convert the resource to JSON
```powershell
$ResourceBatchRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

