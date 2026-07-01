# CloudRecalledCopy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtectionCopySetId** | **String** | ID of the asset on the cloud. | 
**RetierRetentionTime** | **System.DateTime** | The amount of time the recalled asset stays on the PowerProtect Data Domain before being retiered back to the cloud. | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudRecalledCopy = Initialize-PpdmApiReferenceCloudRecalledCopy  -ProtectionCopySetId null `
 -RetierRetentionTime null
```

- Convert the resource to JSON
```powershell
$CloudRecalledCopy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

