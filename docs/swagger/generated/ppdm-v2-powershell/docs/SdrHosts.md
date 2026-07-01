# SdrHosts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SdrHost[]**](SdrHost.md) | Server disaster recovery backup host info. | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrHosts = Initialize-PpdmApiReferenceSdrHosts  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SdrHosts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

