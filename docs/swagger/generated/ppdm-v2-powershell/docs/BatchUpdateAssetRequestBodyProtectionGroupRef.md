# BatchUpdateAssetRequestBodyProtectionGroupRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the protection group to which this asset is to be assigned. | [optional] 
**MemberRole** | **String** | The role that this asset plays in the protection group. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequestBodyProtectionGroupRef = Initialize-PpdmApiReferenceBatchUpdateAssetRequestBodyProtectionGroupRef  -Id null `
 -MemberRole null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequestBodyProtectionGroupRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

