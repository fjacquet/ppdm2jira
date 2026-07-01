# CloudUnits
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ResourceCloudUnit[]**](ResourceCloudUnit.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudUnits = Initialize-PpdmApiReferenceCloudUnits  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$CloudUnits | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

