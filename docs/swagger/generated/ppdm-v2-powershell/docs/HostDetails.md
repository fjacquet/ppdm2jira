# HostDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppHost** | [**AppHost**](AppHost.md) |  | [optional] 
**EsxCluster** | [**EsxCluster**](EsxCluster.md) |  | [optional] 
**EsxHost** | [**EsxHost**](EsxHost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HostDetails = Initialize-PpdmApiReferenceHostDetails  -AppHost null `
 -EsxCluster null `
 -EsxHost null
```

- Convert the resource to JSON
```powershell
$HostDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

