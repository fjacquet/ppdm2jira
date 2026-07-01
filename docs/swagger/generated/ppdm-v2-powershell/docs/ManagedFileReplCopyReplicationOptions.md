# ManagedFileReplCopyReplicationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyDirectives** | [**MfrCopyDirective[]**](MfrCopyDirective.md) |  | [optional] 
**CopySelectors** | [**MfrCopySelector[]**](MfrCopySelector.md) |  | [optional] 
**DisableProtectionPolicyProcessing** | **Boolean** |  | [optional] 
**ExtendedRetentions** | [**ExtendedRetentionObject[]**](ExtendedRetentionObject.md) |  | [optional] 
**IsAdhocReplication** | **Boolean** |  | [optional] 
**Retention** | [**RetentionObject**](RetentionObject.md) |  | [optional] 
**RetentionInterval** | **Int32** |  | [optional] 
**RetentionUnit** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedFileReplCopyReplicationOptions = Initialize-PpdmApiReferenceManagedFileReplCopyReplicationOptions  -CopyDirectives null `
 -CopySelectors null `
 -DisableProtectionPolicyProcessing null `
 -ExtendedRetentions null `
 -IsAdhocReplication null `
 -Retention null `
 -RetentionInterval null `
 -RetentionUnit null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ManagedFileReplCopyReplicationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

