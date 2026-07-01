# SourcePrecheckMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InventorySourceId** | **String** |  | [optional] 
**Messages** | [**PreCheckMessage[]**](PreCheckMessage.md) | pre check messages | [optional] 

## Examples

- Prepare the resource
```powershell
$SourcePrecheckMessage = Initialize-PpdmApiReferenceSourcePrecheckMessage  -InventorySourceId null `
 -Messages null
```

- Convert the resource to JSON
```powershell
$SourcePrecheckMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

