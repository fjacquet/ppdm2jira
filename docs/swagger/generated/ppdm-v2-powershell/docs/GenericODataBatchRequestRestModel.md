# GenericODataBatchRequestRestModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**ODataRequestRestModelMapStringObject[]**](ODataRequestRestModelMapStringObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericODataBatchRequestRestModel = Initialize-PpdmApiReferenceGenericODataBatchRequestRestModel  -Requests null
```

- Convert the resource to JSON
```powershell
$GenericODataBatchRequestRestModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

