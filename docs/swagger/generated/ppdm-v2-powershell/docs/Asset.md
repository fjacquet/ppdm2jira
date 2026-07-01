# Asset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**AssetEmbedded**](AssetEmbedded.md) |  | [optional] 
**Addresses** | [**AssetAddress[]**](AssetAddress.md) | The address of the Asset. | [optional] 
**AliasRefs** | [**AssetAliasRef[]**](AssetAliasRef.md) |  | [optional] 
**AssetGroupId** | **String** |  | [optional] 
**AssetNetworkLabel** | **String** | Label the network interface to be used for Asset communication. | [optional] 
**BackupBranch** | **Int64** | A sequence number which when changed causes the promoteToFull field to be set to true. | [optional] 
**BackupDetails** | [**AssetBackupDetails[]**](AssetBackupDetails.md) |  | [optional] 
**ClusterBackupDetail** | [**AssetClusterBackupDetail**](AssetClusterBackupDetail.md) |  | [optional] 
**ContainerRef** | [**AssetContainerRef**](AssetContainerRef.md) |  | [optional] 
**CreatedAt** | **System.DateTime** | Created time for the asset. | [optional] 
**CreatedBy** | [**CreatedByTypeEnum**](CreatedByTypeEnum.md) |  | [optional] 
**CredentialId** | **String** |  | [optional] 
**Credentials** | [**AssetCredentials[]**](AssetCredentials.md) | Credentials of Asset. | [optional] 
**DataTargetIds** | **String[]** | IDs of data targets associated with this asset. | [optional] 
**DdOptions** | [**AssetDdOptions**](AssetDdOptions.md) |  | [optional] 
**Deleted** | **Boolean** |  | [optional] 
**Description** | **String** | A simple description of the asset. | [optional] 
**Details** | [**AssetDetails**](AssetDetails.md) |  | 
**ExtendedData** | [**AssetExtendedData**](AssetExtendedData.md) |  | [optional] 
**ExternalIds** | **String[]** | The external IDs for this asset. | [optional] 
**GranularBackupConfigured** | **Boolean** | True if granular backup is configured for the asset. | [optional] [readonly] 
**HypervisorClusterRef** | [**AssetHypervisorClusterRef**](AssetHypervisorClusterRef.md) |  | [optional] 
**HypervisorServerRef** | [**AssetHypervisorServerRef**](AssetHypervisorServerRef.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**IncludedInNestedBackup** | **Boolean** | Indicates whether it should be protected as part of parent asset protection. | [optional] 
**InventorySourceRef** | [**AssetInventorySourceRef**](AssetInventorySourceRef.md) |  | [optional] 
**ItemSelectionRuleRefs** | [**ItemSelectionRuleRef[]**](ItemSelectionRuleRef.md) | The item selection rules associated with this asset. | [optional] 
**LastAvailableCopyTime** | **System.DateTime** | The date and time of the last available copy for this asset. | [optional] 
**Name** | **String** | The name of an asset. | 
**NasSubsystemRefs** | [**NasSubsystemRef[]**](NasSubsystemRef.md) |  | [optional] 
**NestedBackupScope** | **String** | This property describes whether to protect all nested assets or not. | [optional] 
**NetworkLabel** | **String** | Network label assigned to this asset. | [optional] 
**OperatingSystem** | [**AssetOperatingSystem**](AssetOperatingSystem.md) |  | [optional] 
**OriginType** | **String** | Denotes the type of asset based on how it was created. | [optional] 
**ParentRefs** | [**AssetParentRefsInner[]**](AssetParentRefsInner.md) | Details about the parent assets. | [optional] 
**PowerState** | **String** | Power state of the asset. | [optional] 
**PreferredHostRef** | [**AssetPreferredHostRef**](AssetPreferredHostRef.md) |  | [optional] 
**PromoteToFull** | **Boolean** | If true, then the next time this asset is protected it must be with a full backup. | [optional] 
**Protectable** | **Boolean** | Used for marking whether the asset can be added in the protection policy. | [optional] 
**ProtectionCapacity** | [**AssetProtectionCapacity**](AssetProtectionCapacity.md) |  | [optional] 
**ProtectionGroupRef** | [**AssetProtectionGroupRef**](AssetProtectionGroupRef.md) |  | [optional] 
**ProtectionLevel** | **String** | Only applicable to PowerMax Storage Group assets, indicates whether parent or child storage groups are assignable to a policy. | [optional] [readonly] 
**ProtectionLifeCycleId** | **String** | Deprecated. Use protectionPolicyId instead. | [optional] 
**ProtectionPolicy** | [**ParentProtectionPolicy**](ParentProtectionPolicy.md) |  | [optional] 
**ProtectionPolicyId** | **String** | ID of the protection policy that the asset belongs to. | [optional] 
**ProtectionProtocol** | **String** | The protection protocol supported by the asset. | [optional] 
**ProtectionStatus** | **String** | Used to indicate if the asset is assigned to a protection policy, and, if so, whether it is to be protected or excluded. | [optional] [readonly] 
**ReplicaRefs** | [**AssetReplicaRefsInner[]**](AssetReplicaRefsInner.md) | Details about the asset replication. | [optional] 
**ResourceGroupIds** | **String[]** | ID of resource groups. | [optional] 
**ResourceGroups** | [**AssetResourceGroup[]**](AssetResourceGroup.md) | Resource groups of the asset. | [optional] 
**RuleId** | **String** | Dynamic filter ID that adds the asset in the protection policy. | [optional] 
**RuleName** | **String** | Name of assets rule that adds the asset in the protection policy. | [optional] 
**Size** | **Int64** | The total size in bytes for this asset. | [optional] 
**Status** | **String** | The last discovery status of the asset. | [optional] [readonly] 
**StorageType** | **String** | The type of storage used. | [optional] 
**Subtype** | [**AssetSubtypeEnum**](AssetSubtypeEnum.md) |  | [optional] 
**SupportedBackupMechanisms** | **String[]** | The backup mechanisms supported for this NAS NDMP asset. | [optional] 
**Type** | **String** | The type of an asset | 
**UpdatedAt** | **System.DateTime** | Update time for the asset. | [optional] 
**UserTags** | **String[]** | Only for VMware assets. The user can create tags for one Virtual Machine (VM) at the vCenter side. | [optional] 
**Vendor** | [**VendorEnum**](VendorEnum.md) |  | [optional] 
**Version** | **String** | Version of the asset. | [optional] 

## Examples

- Prepare the resource
```powershell
$Asset = Initialize-PpdmApiReferenceAsset  -Embedded null `
 -Addresses null `
 -AliasRefs null `
 -AssetGroupId null `
 -AssetNetworkLabel null `
 -BackupBranch null `
 -BackupDetails null `
 -ClusterBackupDetail null `
 -ContainerRef null `
 -CreatedAt null `
 -CreatedBy null `
 -CredentialId null `
 -Credentials null `
 -DataTargetIds null `
 -DdOptions null `
 -Deleted null `
 -Description null `
 -Details null `
 -ExtendedData null `
 -ExternalIds null `
 -GranularBackupConfigured null `
 -HypervisorClusterRef null `
 -HypervisorServerRef null `
 -Id null `
 -IncludedInNestedBackup null `
 -InventorySourceRef null `
 -ItemSelectionRuleRefs null `
 -LastAvailableCopyTime null `
 -Name null `
 -NasSubsystemRefs null `
 -NestedBackupScope null `
 -NetworkLabel null `
 -OperatingSystem null `
 -OriginType null `
 -ParentRefs null `
 -PowerState null `
 -PreferredHostRef null `
 -PromoteToFull null `
 -Protectable null `
 -ProtectionCapacity null `
 -ProtectionGroupRef null `
 -ProtectionLevel null `
 -ProtectionLifeCycleId null `
 -ProtectionPolicy null `
 -ProtectionPolicyId null `
 -ProtectionProtocol null `
 -ProtectionStatus null `
 -ReplicaRefs null `
 -ResourceGroupIds null `
 -ResourceGroups null `
 -RuleId null `
 -RuleName null `
 -Size null `
 -Status null `
 -StorageType null `
 -Subtype null `
 -SupportedBackupMechanisms null `
 -Type null `
 -UpdatedAt null `
 -UserTags null `
 -Vendor null `
 -Version null
```

- Convert the resource to JSON
```powershell
$Asset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

