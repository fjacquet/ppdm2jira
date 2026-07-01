# CdrVcRemoteServerServerParams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** |  | [optional] 
**Credentials** | [**CdrVcRemoteServerServerParamsCredentials**](CdrVcRemoteServerServerParamsCredentials.md) |  | [optional] 
**Ipv6Configured** | **Boolean** |  | [optional] 
**Metadata** | **String** |  | [optional] 
**MtreeId** | **String** | ID of mTree. | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcRemoteServerServerParams = Initialize-PpdmApiReferenceCdrVcRemoteServerServerParams  -Address null `
 -Credentials null `
 -Ipv6Configured null `
 -Metadata null `
 -MtreeId null `
 -Port null
```

- Convert the resource to JSON
```powershell
$CdrVcRemoteServerServerParams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

