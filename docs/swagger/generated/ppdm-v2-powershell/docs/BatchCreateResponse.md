# BatchCreateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**BatchCreateResponseBody**](BatchCreateResponseBody.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchCreateResponse = Initialize-PpdmApiReferenceBatchCreateResponse  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$BatchCreateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

