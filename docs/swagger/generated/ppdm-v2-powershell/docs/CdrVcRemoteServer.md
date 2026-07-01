# CdrVcRemoteServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CdrVcConfiguration** | [**CdrVcConfiguration**](CdrVcConfiguration.md) |  | [optional] 
**Id** | **String** | ID of the Vcenter. | [optional] 
**Location** | **String** |  | [optional] 
**Model** | **String** |  | [optional] 
**Partial** | **Boolean** |  | [optional] 
**SerialId** | **String** |  | [optional] 
**ServerParams** | [**CdrVcRemoteServerServerParams**](CdrVcRemoteServerServerParams.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcRemoteServer = Initialize-PpdmApiReferenceCdrVcRemoteServer  -CdrVcConfiguration null `
 -Id null `
 -Location null `
 -Model null `
 -Partial null `
 -SerialId null `
 -ServerParams null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$CdrVcRemoteServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

