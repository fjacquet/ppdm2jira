# IdentityMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **Int32** | Number of active items (For example, connected identity providers) | [optional] 
**Locator** | **String** | String of local-access-provisions, or remote-access-provisions, or identity-providers. Metric locator, one of the pre-defined values above | [optional] 
**Total** | **Int32** | Metric locator, one of the pre-defined values above | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityMetric = Initialize-PpdmApiReferenceIdentityMetric  -Active null `
 -Locator null `
 -Total null
```

- Convert the resource to JSON
```powershell
$IdentityMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

