# BatchUpdateAssetRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupDetails** | [**BatchUpdateAssetRequestBodyBackupDetails[]**](BatchUpdateAssetRequestBodyBackupDetails.md) |  | [optional] 
**Credentials** | [**AssetCredentials[]**](AssetCredentials.md) |  | [optional] 
**Details** | [**BatchUpdateAssetRequestBodyDetails**](BatchUpdateAssetRequestBodyDetails.md) |  | [optional] 
**ExtendedData** | [**AssetExtendedData**](AssetExtendedData.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**LastAvailableCopyTime** | **System.DateTime** | The date and time when the last copy for this asset was available. | [optional] 
**PreferredHostRef** | [**AssetPreferredHostRef**](AssetPreferredHostRef.md) |  | [optional] 
**ProtectionGroupRef** | [**BatchUpdateAssetRequestBodyProtectionGroupRef**](BatchUpdateAssetRequestBodyProtectionGroupRef.md) |  | [optional] 
**ProtectionPolicy** | [**BatchUpdateAssetRequestBodyProtectionPolicy**](BatchUpdateAssetRequestBodyProtectionPolicy.md) |  | [optional] 
**ProtectionProtocol** | [**ProtectionProtocolEnum**](ProtectionProtocolEnum.md) |  | [optional] 
**UserTags** | **String[]** | The user can create tags specific to the asset. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequestBody = Initialize-PpdmApiReferenceBatchUpdateAssetRequestBody  -BackupDetails null `
 -Credentials null `
 -Details null `
 -ExtendedData null `
 -Id null `
 -LastAvailableCopyTime null `
 -PreferredHostRef null `
 -ProtectionGroupRef null `
 -ProtectionPolicy null `
 -ProtectionProtocol null `
 -UserTags null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

