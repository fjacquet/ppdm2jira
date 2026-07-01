# DiscoveryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** | Error description for the discovery task. | [optional] 
**MessageID** | **String** | ID of the message for the discovery task. | [optional] 
**Remediation** | **String** | Remediation for the discovery task. | [optional] 
**Status** | **String** | Status of the discovery task. Valid values are following: - OK - CANCELED - FAILED - OK_WITH_ERRORS. | [optional] 
**Summaries** | **String[]** | Summaries of the discovery task. | [optional] 

## Examples

- Prepare the resource
```powershell
$DiscoveryResult = Initialize-PpdmApiReferenceDiscoveryResult  -VarError null `
 -MessageID null `
 -Remediation null `
 -Status null `
 -Summaries null
```

- Convert the resource to JSON
```powershell
$DiscoveryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

