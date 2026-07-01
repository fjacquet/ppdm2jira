# VmwareEntity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Id** | **String** | VMware entity ID as a concatenation of vcID colon and moref. | [optional] 
**InventorySourceId** | **String** |  | [optional] 
**Name** | **String** | VMware entity name. | [optional] 
**ParentId** | **String** |  | [optional] 
**Type** | **String** | VMware entity type. | [optional] 
**ViewType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VmwareEntity = Initialize-PpdmApiReferenceVmwareEntity  -Details null `
 -Id null `
 -InventorySourceId null `
 -Name null `
 -ParentId null `
 -Type null `
 -ViewType null
```

- Convert the resource to JSON
```powershell
$VmwareEntity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

