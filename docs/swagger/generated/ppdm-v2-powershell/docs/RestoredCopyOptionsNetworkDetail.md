# RestoredCopyOptionsNetworkDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkAdapterId** | **String** | Id of the network adapter. | [optional] 
**NetworkAdapterName** | **String** | Name of the network adapter. | [optional] 
**SwitchId** | **String** | Id of the switch. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopyOptionsNetworkDetail = Initialize-PpdmApiReferenceRestoredCopyOptionsNetworkDetail  -NetworkAdapterId null `
 -NetworkAdapterName null `
 -SwitchId null
```

- Convert the resource to JSON
```powershell
$RestoredCopyOptionsNetworkDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

