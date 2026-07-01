# SearchClusterManagement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity ID for the operation. | [optional] 
**ClusterId** | **String** | Cluster ID for the operation. | [optional] 
**OfflineIndexConfig** | [**OfflineIndexConfig**](OfflineIndexConfig.md) |  | [optional] 
**Operation** | **String** | Operation to be carried out. | 

## Examples

- Prepare the resource
```powershell
$SearchClusterManagement = Initialize-PpdmApiReferenceSearchClusterManagement  -ActivityId null `
 -ClusterId null `
 -OfflineIndexConfig null `
 -Operation null
```

- Convert the resource to JSON
```powershell
$SearchClusterManagement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

