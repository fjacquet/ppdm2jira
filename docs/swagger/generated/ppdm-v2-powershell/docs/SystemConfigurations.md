# SystemConfigurations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SystemConfiguration[]**](SystemConfiguration.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemConfigurations = Initialize-PpdmApiReferenceSystemConfigurations  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SystemConfigurations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

