# EsxHost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigScratchLocation** | **String** |  | [optional] 
**HostMoref** | **String** |  | [optional] 
**HostUuid** | **String** |  | [optional] 
**HostVersion** | **String** |  | [optional] 
**Networks** | [**NetworkMoref[]**](NetworkMoref.md) |  | [optional] 
**ScsiAdapter** | **Boolean** |  | [optional] 
**SplitterInfo** | [**SplitterInfo**](SplitterInfo.md) |  | [optional] 
**VCenterUuid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EsxHost = Initialize-PpdmApiReferenceEsxHost  -ConfigScratchLocation null `
 -HostMoref null `
 -HostUuid null `
 -HostVersion null `
 -Networks null `
 -ScsiAdapter null `
 -SplitterInfo null `
 -VCenterUuid null
```

- Convert the resource to JSON
```powershell
$EsxHost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

