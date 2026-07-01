# AppServerAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MssqlAppServer** | [**MssqlAppServerAttribute**](MssqlAppServerAttribute.md) |  | [optional] 
**OracleAppServer** | [**OracleAppServerAttribute**](OracleAppServerAttribute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppServerAttributes = Initialize-PpdmApiReferenceAppServerAttributes  -MssqlAppServer null `
 -OracleAppServer null
```

- Convert the resource to JSON
```powershell
$AppServerAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

