# RestoredFilesBatchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**RestoredFilesBatchResponseBody**](RestoredFilesBatchResponseBody.md) |  | [optional] 
**Id** | **String** | The original ID from the request. | 
**Status** | **Decimal** | The HTTP status code for each request.  Normally it is 202, but each request MAY fail. | 

## Examples

- Prepare the resource
```powershell
$RestoredFilesBatchResponse = Initialize-PpdmApiReferenceRestoredFilesBatchResponse  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$RestoredFilesBatchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

