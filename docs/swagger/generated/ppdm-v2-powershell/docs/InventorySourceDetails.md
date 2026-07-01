# InventorySourceDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomAppGroup** | [**InventorySourceCustomAppGroup**](InventorySourceCustomAppGroup.md) |  | [optional] 
**CustomStorageGroup** | [**InventorySourceCustomStorageGroup**](InventorySourceCustomStorageGroup.md) |  | [optional] 
**DataDomain** | [**InventorySourceDataDomain**](InventorySourceDataDomain.md) |  | [optional] 
**K8s** | [**InventorySourceK8s**](InventorySourceK8s.md) |  | [optional] 
**Model** | **String** |  | [optional] 
**Nas** | [**InventorySourceNas**](InventorySourceNas.md) |  | [optional] 
**Ppdm** | [**InventorySourcePpdm**](InventorySourcePpdm.md) |  | [optional] 
**VCenter** | [**InventorySourceVCenter**](InventorySourceVCenter.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceDetails = Initialize-PpdmApiReferenceInventorySourceDetails  -CustomAppGroup null `
 -CustomStorageGroup null `
 -DataDomain null `
 -K8s null `
 -Model null `
 -Nas null `
 -Ppdm null `
 -VCenter null
```

- Convert the resource to JSON
```powershell
$InventorySourceDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

