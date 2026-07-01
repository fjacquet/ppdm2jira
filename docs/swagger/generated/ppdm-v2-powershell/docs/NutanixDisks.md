# NutanixDisks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatastoreId** | **String** | The ID of the data store that the copy restored to. | [optional] 
**Uuid** | **String** | The UUID of the disk. | [optional] 

## Examples

- Prepare the resource
```powershell
$NutanixDisks = Initialize-PpdmApiReferenceNutanixDisks  -DatastoreId null `
 -Uuid null
```

- Convert the resource to JSON
```powershell
$NutanixDisks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

