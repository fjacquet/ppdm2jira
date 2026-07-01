# RestoreGroupVirtualDiskMapDefault
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatastoreMoref** | **String** | The datastore MoRef in vCenter. | [optional] 
**ProvisioningType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroupVirtualDiskMapDefault = Initialize-PpdmApiReferenceRestoreGroupVirtualDiskMapDefault  -DatastoreMoref null `
 -ProvisioningType null
```

- Convert the resource to JSON
```powershell
$RestoreGroupVirtualDiskMapDefault | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

