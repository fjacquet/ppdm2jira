# HypervBackupNetworkAdaptersInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**SwitchId** | **String** |  | [optional] 
**SwitchName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HypervBackupNetworkAdaptersInner = Initialize-PpdmApiReferenceHypervBackupNetworkAdaptersInner  -Id null `
 -Name null `
 -SwitchId null `
 -SwitchName null
```

- Convert the resource to JSON
```powershell
$HypervBackupNetworkAdaptersInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

