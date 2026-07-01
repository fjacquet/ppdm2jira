# ProxyUpgradeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity id of the upgrade job. | [optional] 
**Messages** | [**PreCheckMessage[]**](PreCheckMessage.md) | messages | [optional] 
**PrecheckMessages** | [**SourcePrecheckMessage[]**](SourcePrecheckMessage.md) | messages | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyUpgradeResponse = Initialize-PpdmApiReferenceProxyUpgradeResponse  -ActivityId null `
 -Messages null `
 -PrecheckMessages null
```

- Convert the resource to JSON
```powershell
$ProxyUpgradeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

