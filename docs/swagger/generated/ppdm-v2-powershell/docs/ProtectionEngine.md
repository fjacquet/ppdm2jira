# ProtectionEngine
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**EngineEmbedded**](EngineEmbedded.md) |  | [optional] 
**Credentials** | [**EngineCredential**](EngineCredential.md) |  | 
**Detail** | [**EngineDetail**](EngineDetail.md) |  | 
**Id** | **String** | ID. | [optional] 
**IpAddress** | **String** | IP address of the protection engine (VPE or vRPA cluster). | 
**Name** | **String** | Name to associate with the protection engine (for example, the vRPA cluster name). | 
**RegisteredAt** | **System.DateTime** | When the cluster was registered to the PowerProtect Data Manager. | [optional] 
**Status** | **String** | Status of the protection engine. | 
**Type** | **String** | Engine type (vRPA or VPE). | 

## Examples

- Prepare the resource
```powershell
$ProtectionEngine = Initialize-PpdmApiReferenceProtectionEngine  -Embedded null `
 -Credentials null `
 -Detail null `
 -Id null `
 -IpAddress null `
 -Name null `
 -RegisteredAt null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProtectionEngine | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

