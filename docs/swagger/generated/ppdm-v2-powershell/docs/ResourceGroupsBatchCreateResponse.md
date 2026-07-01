# ResourceGroupsBatchCreateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**ResourceGroupsBatchCreateResponseBody**](ResourceGroupsBatchCreateResponseBody.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceGroupsBatchCreateResponse = Initialize-PpdmApiReferenceResourceGroupsBatchCreateResponse  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ResourceGroupsBatchCreateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

