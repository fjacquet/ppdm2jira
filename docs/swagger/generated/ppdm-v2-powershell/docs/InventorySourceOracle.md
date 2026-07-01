# InventorySourceOracle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rman** | [**Rman**](Rman.md) |  | [optional] 
**TnsAlias** | **String** | Transparent Network Substrate (TNS) alias is needed only for DB authentication and wallet. | [optional] 
**TnsLocation** | **String** | TNS location is needed only for DB authentication and wallet. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceOracle = Initialize-PpdmApiReferenceInventorySourceOracle  -Rman null `
 -TnsAlias null `
 -TnsLocation null
```

- Convert the resource to JSON
```powershell
$InventorySourceOracle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

