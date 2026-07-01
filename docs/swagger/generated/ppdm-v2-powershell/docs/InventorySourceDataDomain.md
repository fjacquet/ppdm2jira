# InventorySourceDataDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MtreeReplicationConnectHost** | **String** | The MTree replication connection host address for MTree replication between the DM5500 and the Cyber Recovery Vault. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceDataDomain = Initialize-PpdmApiReferenceInventorySourceDataDomain  -MtreeReplicationConnectHost null
```

- Convert the resource to JSON
```powershell
$InventorySourceDataDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

