# InventorySourcePpdm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Direction** | **String** | The direction of replica meta-data synchronization.  Value is one of INCOMING, OUTGOING, BI_DIRECTIONAL | [optional] 
**Enabled** | **Boolean** | Allow synchronization of the PowerProtect Data Manager system. | [optional] [default to $true]
**SystemId** | **String** | The system ID of the PowerProtect Data Manager system. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourcePpdm = Initialize-PpdmApiReferenceInventorySourcePpdm  -Direction null `
 -Enabled null `
 -SystemId null
```

- Convert the resource to JSON
```powershell
$InventorySourcePpdm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

