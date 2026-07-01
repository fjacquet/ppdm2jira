# ProtectionEngineManagement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EngineId** | **String** | protection engine id | 
**EngineType** | **String** | Protection engine type (VPE or vRPA). | 
**JobId** | **String** | Job ID for the operation. | [optional] 
**Operation** | **String** | Management request operation. | 
**Options** | [**Options**](Options.md) |  | [optional] 
**ProxyIds** | **String[]** | The list of proxy IDs to run the operation on. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionEngineManagement = Initialize-PpdmApiReferenceProtectionEngineManagement  -EngineId null `
 -EngineType null `
 -JobId null `
 -Operation null `
 -Options null `
 -ProxyIds null
```

- Convert the resource to JSON
```powershell
$ProtectionEngineManagement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

