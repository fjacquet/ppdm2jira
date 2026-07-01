# FlrRestoreResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Responses** | [**FlrActivityResponses[]**](FlrActivityResponses.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FlrRestoreResponse = Initialize-PpdmApiReferenceFlrRestoreResponse  -Responses null
```

- Convert the resource to JSON
```powershell
$FlrRestoreResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

