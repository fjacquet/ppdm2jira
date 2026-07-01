# ProtectionSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxNoOfProtectableVms** | **Int64** |  | [optional] 
**NoOfProtectedVms** | **Int64** |  | [optional] 
**TotalProtectedSizeInBytes** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionSummary = Initialize-PpdmApiReferenceProtectionSummary  -MaxNoOfProtectableVms null `
 -NoOfProtectedVms null `
 -TotalProtectedSizeInBytes null
```

- Convert the resource to JSON
```powershell
$ProtectionSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

