# VmAgentInstallationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The job group id of the initiated VM agent installation activity. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmAgentInstallationResponse = Initialize-PpdmApiReferenceVmAgentInstallationResponse  -ActivityId null
```

- Convert the resource to JSON
```powershell
$VmAgentInstallationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

