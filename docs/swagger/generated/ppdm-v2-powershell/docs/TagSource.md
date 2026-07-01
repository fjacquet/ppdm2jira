# TagSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalCategoryId** | **String** | The external system (for example, vCenter) category ID. | [optional] 
**ExternalTagId** | **String** | The external system (for example, vCenter) tag ID. | [optional] 
**Id** | **String** | ID of the source. It is the inventory source ID if the type is INVENTORY_SOURCE_VCENTER. This field is not populated if the type is USER_TAG. | [optional] 
**Type** | **String** | Source type of the tag.  | 

## Examples

- Prepare the resource
```powershell
$TagSource = Initialize-PpdmApiReferenceTagSource  -ExternalCategoryId null `
 -ExternalTagId null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$TagSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

