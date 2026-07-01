# SearchNodeManagement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity ID for the operation. | [optional] 
**NodeId** | **String** | Node II for the operation. | 
**Operation** | **String** | Operation to be carried out. | 

## Examples

- Prepare the resource
```powershell
$SearchNodeManagement = Initialize-PpdmApiReferenceSearchNodeManagement  -ActivityId null `
 -NodeId null `
 -Operation null
```

- Convert the resource to JSON
```powershell
$SearchNodeManagement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

