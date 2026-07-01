# AssetVmDatastore
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatastoreMoref** | **String** | The data store reference that the virtual machine belongs to. | [optional] 
**DatastoreName** | **String** | The datastore name that the virtual machine belongs to. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetVmDatastore = Initialize-PpdmApiReferenceAssetVmDatastore  -DatastoreMoref null `
 -DatastoreName null
```

- Convert the resource to JSON
```powershell
$AssetVmDatastore | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

