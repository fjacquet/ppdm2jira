# EsxCluster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterMoref** | **String** |  | [optional] 
**Networks** | [**NetworkMoref[]**](NetworkMoref.md) |  | [optional] 
**VCenterUuid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EsxCluster = Initialize-PpdmApiReferenceEsxCluster  -ClusterMoref null `
 -Networks null `
 -VCenterUuid null
```

- Convert the resource to JSON
```powershell
$EsxCluster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

