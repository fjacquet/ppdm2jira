# AppHost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | [**AppHostAgent**](AppHostAgent.md) |  | [optional] 
**AppServers** | [**AppHostAppServer[]**](AppHostAppServer.md) |  | [optional] 
**ApplicationsOfInterest** | [**AppHostApplicationsOfInterest[]**](AppHostApplicationsOfInterest.md) |  | [optional] 
**DbConnection** | [**ConnectionInfo**](ConnectionInfo.md) |  | [optional] 
**DbCredentialId** | **String** |  | [optional] 
**OracleDBProperties** | [**OracleDBProperties**](OracleDBProperties.md) |  | [optional] 
**Os** | **String** | The operating system, including WINDOWS, LINUX and AIX. | [optional] 
**Phase** | **String** |  | [optional] 
**ProtectionEngineFlow** | **String** |  | [optional] 
**RmanConnection** | [**ConnectionInfo**](ConnectionInfo.md) |  | [optional] 
**SubTypes** | **String[]** |  | [optional] [readonly] 
**ThrottlingConfig** | [**ThrottlingConfig**](ThrottlingConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppHost = Initialize-PpdmApiReferenceAppHost  -Agent null `
 -AppServers null `
 -ApplicationsOfInterest null `
 -DbConnection null `
 -DbCredentialId null `
 -OracleDBProperties null `
 -Os null `
 -Phase null `
 -ProtectionEngineFlow null `
 -RmanConnection null `
 -SubTypes null `
 -ThrottlingConfig null
```

- Convert the resource to JSON
```powershell
$AppHost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

