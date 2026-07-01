# RestoredTargetCompatibilities
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompatibilityFailureReason** | **String** | Reason for compatibility failure. | [optional] 
**TargetName** | **String** | Name of the target. | [optional] 
**Type** | **String** | Type of restore target. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredTargetCompatibilities = Initialize-PpdmApiReferenceRestoredTargetCompatibilities  -CompatibilityFailureReason null `
 -TargetName null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RestoredTargetCompatibilities | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

