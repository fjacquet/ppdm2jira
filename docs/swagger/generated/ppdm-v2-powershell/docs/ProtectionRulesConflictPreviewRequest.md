# ProtectionRulesConflictPreviewRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PreviewAction** | **String** |  | 
**ProtectionRule** | [**ProtectionRule**](ProtectionRule.md) |  | 

## Examples

- Prepare the resource
```powershell
$ProtectionRulesConflictPreviewRequest = Initialize-PpdmApiReferenceProtectionRulesConflictPreviewRequest  -PreviewAction null `
 -ProtectionRule null
```

- Convert the resource to JSON
```powershell
$ProtectionRulesConflictPreviewRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

