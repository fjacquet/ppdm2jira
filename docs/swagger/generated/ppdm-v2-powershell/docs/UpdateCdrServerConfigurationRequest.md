# UpdateCdrServerConfigurationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionIp** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateCdrServerConfigurationRequest = Initialize-PpdmApiReferenceUpdateCdrServerConfigurationRequest  -ConnectionIp null `
 -Password null
```

- Convert the resource to JSON
```powershell
$UpdateCdrServerConfigurationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

