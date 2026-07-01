# RecoverOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InvalidRootCARiskAccepted** | **Boolean** | Flag to confirm that the customer acknowledged the risks of restoring a backup with an invalid root CA certificate. | [optional] 
**ReplacementDataDomain** | [**ReplacementDataDomain**](ReplacementDataDomain.md) |  | [optional] 
**RestoreApplianceOnStandalone** | **Boolean** | Boolean flag to restore the backup on the standalone system. | [optional] 
**VaultRecovery** | **Boolean** | Flag to disable the two-factor authentication for Cyber Recovery. | [optional] 

## Examples

- Prepare the resource
```powershell
$RecoverOptions = Initialize-PpdmApiReferenceRecoverOptions  -InvalidRootCARiskAccepted null `
 -ReplacementDataDomain null `
 -RestoreApplianceOnStandalone null `
 -VaultRecovery null
```

- Convert the resource to JSON
```powershell
$RecoverOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

