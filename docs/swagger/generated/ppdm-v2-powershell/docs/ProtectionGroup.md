# ProtectionGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoAssignToPolicy** | **Boolean** | If this is true, member assets will be automatically assigned to the protection policy specified by the protectionPolicyRef property. | [optional] 
**BackupStrategy** | **String** | Backup strategy of the protection group. | [optional] 
**CreatedAt** | **System.DateTime** | When the protection group was created. | [optional] 
**Description** | **String** | Detailed description of the protection group. | [optional] 
**Id** | **String** | ID of the protection group. | [optional] 
**LastAvailableCopyTime** | **System.DateTime** | Time of most recently created copy as derived from the protection group&#39;s member assets. | [optional] 
**LastDiscoveryStatus** | **String** | The last discovery status of the protection group as derived from the protection group&#39;s member assets. | [optional] 
**MemberAssetType** | **String** | Asset type of the protection group&#39;s member assets. | [optional] 
**Name** | **String** | Name of the protection group. | [optional] 
**NaturalIds** | **String[]** | The natural ids of the protection group. Used to determine which assets should belong to this protection group. | [optional] 
**OperatingSystems** | **String[]** | An array of strings containing the union of all the values in the member assets’ operatingSystem.name field. | [optional] 
**ProtectionPolicyRef** | [**ProtectionGroupProtectionPolicyRef**](ProtectionGroupProtectionPolicyRef.md) |  | [optional] 
**ProtectionStatus** | **String** | Protection status of the protection group depending on the backup strategy and whether it is assigned to a protection policy. | [optional] 
**Subtype** | **String** | Defines the subtype in the case of STORAGE_DIRECT_APPLICATION type assets in a protection group. | [optional] 
**SupportedProtectionProtocols** | **String[]** | The intersection of the supportedProectionProtocols field on an application server that is associated with an asset, which is a member of the protection group. | [optional] 
**Type** | **String** | Type of the protection group. | [optional] 
**UpdatedAt** | **System.DateTime** | When the protection group was last updated. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionGroup = Initialize-PpdmApiReferenceProtectionGroup  -AutoAssignToPolicy null `
 -BackupStrategy null `
 -CreatedAt null `
 -Description null `
 -Id null `
 -LastAvailableCopyTime null `
 -LastDiscoveryStatus null `
 -MemberAssetType null `
 -Name null `
 -NaturalIds null `
 -OperatingSystems null `
 -ProtectionPolicyRef null `
 -ProtectionStatus null `
 -Subtype null `
 -SupportedProtectionProtocols null `
 -Type null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ProtectionGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

