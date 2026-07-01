# ReplacementDataDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | FQDN or IP of Data Domain. | [optional] 
**Name** | **String** | Name of Data Domain. | [optional] 
**NetworkInterfaces** | [**NetworkInterfaceReplacement[]**](NetworkInterfaceReplacement.md) | Provides old and new network interface address. | [optional] 
**OriginalName** | **String** | Original name of Data Domain. | [optional] 
**Password** | **Boolean** | Password for logging into the Data Domain. | [optional] 
**Port** | **Int32** | Port Number of Data Domain. | [optional] 
**RecoveredStorageUnits** | **String[]** | List of Storage Units. | [optional] 
**Username** | **String** | Username for logging into the Data Domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplacementDataDomain = Initialize-PpdmApiReferenceReplacementDataDomain  -Address null `
 -Name null `
 -NetworkInterfaces null `
 -OriginalName null `
 -Password null `
 -Port null `
 -RecoveredStorageUnits null `
 -Username null
```

- Convert the resource to JSON
```powershell
$ReplacementDataDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

