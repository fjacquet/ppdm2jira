# RecoveryContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description for the recovery context. | 
**Id** | **String** |  | 
**VarLocal** | **Boolean** | The name of an asset. | 
**Name** | **String** | The name of an asset. | 
**SystemTenantId** | **String** | The tenant ID on the target PowerProtect Data Manager system | 

## Examples

- Prepare the resource
```powershell
$RecoveryContext = Initialize-PpdmApiReferenceRecoveryContext  -Description null `
 -Id null `
 -VarLocal null `
 -Name null `
 -SystemTenantId null
```

- Convert the resource to JSON
```powershell
$RecoveryContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

