# ResourceGroupsBatchCreateResponses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Responses** | [**ResourceGroupsBatchCreateResponse[]**](ResourceGroupsBatchCreateResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceGroupsBatchCreateResponses = Initialize-PpdmApiReferenceResourceGroupsBatchCreateResponses  -Responses null
```

- Convert the resource to JSON
```powershell
$ResourceGroupsBatchCreateResponses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

