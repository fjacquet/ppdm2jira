# CopyDiscoveryResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiscoveryStartTime** | **String** | timestamp for last ES backup | 
**PolicyIds** | **String[]** | List all the policies, whose asset copy discovery needs to be executed | 
**WorkflowTaskId** | **String** | Id for NAS Server DR job | 

## Examples

- Prepare the resource
```powershell
$CopyDiscoveryResource = Initialize-PpdmApiReferenceCopyDiscoveryResource  -DiscoveryStartTime null `
 -PolicyIds null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$CopyDiscoveryResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

