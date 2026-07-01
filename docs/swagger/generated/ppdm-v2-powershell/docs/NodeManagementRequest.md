# NodeManagementRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | **String** | The operation to be performed on the node. | [optional] 

## Examples

- Prepare the resource
```powershell
$NodeManagementRequest = Initialize-PpdmApiReferenceNodeManagementRequest  -Operation null
```

- Convert the resource to JSON
```powershell
$NodeManagementRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

