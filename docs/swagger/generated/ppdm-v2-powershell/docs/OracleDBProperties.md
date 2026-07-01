# OracleDBProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RmanProperties** | [**RmanProperties**](RmanProperties.md) |  | [optional] 
**TnsAdmin** | **String** |  | [optional] 
**TnsName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OracleDBProperties = Initialize-PpdmApiReferenceOracleDBProperties  -RmanProperties null `
 -TnsAdmin null `
 -TnsName null
```

- Convert the resource to JSON
```powershell
$OracleDBProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

