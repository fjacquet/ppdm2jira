# OracleAppServerAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DbDomain** | **String** |  | [optional] 
**DbId** | **String** |  | [optional] 
**DbUniqueName** | **String** |  | [optional] 
**LastJobId** | **Int64** |  | [optional] 
**LastJobStartTime** | **System.DateTime** |  | [optional] 
**Sid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OracleAppServerAttribute = Initialize-PpdmApiReferenceOracleAppServerAttribute  -DbDomain null `
 -DbId null `
 -DbUniqueName null `
 -LastJobId null `
 -LastJobStartTime null `
 -Sid null
```

- Convert the resource to JSON
```powershell
$OracleAppServerAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

