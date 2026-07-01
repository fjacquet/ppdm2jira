# BatchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**ErrorMessage**](ErrorMessage.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchResponse = Initialize-PpdmApiReferenceBatchResponse  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$BatchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

