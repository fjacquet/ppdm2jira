# PatchAssetRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupBranch** | **Int64** | A sequence number, that when changed, causes the promoteToFull field to be set to true. | [optional] 
**BackupDetails** | [**AssetBackupDetails[]**](AssetBackupDetails.md) |  | [optional] 
**ClusterBackupDetail** | [**AssetClusterBackupDetail**](AssetClusterBackupDetail.md) |  | [optional] 
**CredentialId** | **String** | The credential ID associated with the asset. | [optional] 
**Credentials** | [**PatchAssetRequestCredentials[]**](PatchAssetRequestCredentials.md) | The credentials associated with the asset. | [optional] 
**DdOptions** | [**PatchAssetRequestDdOptions**](PatchAssetRequestDdOptions.md) |  | [optional] 
**Description** | **String** | The description of an asset. | [optional] 
**Details** | [**PatchAssetRequestDetails**](PatchAssetRequestDetails.md) |  | [optional] 
**ExtendedData** | [**AssetExtendedData**](AssetExtendedData.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**IncludedInNestedBackup** | **Boolean** | Indicates whether it should be protected as part of parent asset protection. | [optional] 
**LastAvailableCopyTime** | **System.DateTime** | The date &amp; time of last available copy for this asset. | [optional] 
**NestedBackupScope** | **String** | This property describes whether to protect all nested assets or not. | [optional] 
**PreferredHostRef** | [**AssetPreferredHostRef**](AssetPreferredHostRef.md) |  | [optional] 
**PromoteToFull** | **Boolean** | If this field is set to true, then a full backup is required the next time that the asset is protected. | [optional] 
**ProtectionGroupRef** | [**BatchUpdateAssetRequestBodyProtectionGroupRef**](BatchUpdateAssetRequestBodyProtectionGroupRef.md) |  | [optional] 
**ProtectionPolicy** | [**PatchAssetRequestProtectionPolicy**](PatchAssetRequestProtectionPolicy.md) |  | [optional] 
**ProtectionProtocol** | **String** | The protection protocol supported by the asset. | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequest = Initialize-PpdmApiReferencePatchAssetRequest  -BackupBranch null `
 -BackupDetails null `
 -ClusterBackupDetail null `
 -CredentialId null `
 -Credentials null `
 -DdOptions null `
 -Description null `
 -Details null `
 -ExtendedData null `
 -Id null `
 -IncludedInNestedBackup null `
 -LastAvailableCopyTime null `
 -NestedBackupScope null `
 -PreferredHostRef null `
 -PromoteToFull null `
 -ProtectionGroupRef null `
 -ProtectionPolicy null `
 -ProtectionProtocol null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

