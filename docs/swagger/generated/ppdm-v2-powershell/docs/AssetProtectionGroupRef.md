# AssetProtectionGroupRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupStrategy** | **String** | Backup strategy of the protection group. | [optional] 
**Id** | **String** | ID of the protection group. | [optional] 
**MemberRole** | **String** | The role that this asset plays in the protection group. | [optional] 
**Name** | **String** | Name of the protection group. | [optional] 
**Type** | **String** | Type of the protection group. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionGroupRef = Initialize-PpdmApiReferenceAssetProtectionGroupRef  -BackupStrategy null `
 -Id null `
 -MemberRole null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AssetProtectionGroupRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

