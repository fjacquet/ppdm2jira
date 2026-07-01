# Discoveries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Discovery[]**](Discovery.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Discoveries = Initialize-PpdmApiReferenceDiscoveries  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Discoveries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

