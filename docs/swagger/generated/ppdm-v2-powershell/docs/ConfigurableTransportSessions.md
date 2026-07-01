# ConfigurableTransportSessions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mode** | **String** |  | [optional] 
**UseSsl** | **Boolean** |  | [optional] 
**UserDefined** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurableTransportSessions = Initialize-PpdmApiReferenceConfigurableTransportSessions  -Mode null `
 -UseSsl null `
 -UserDefined null
```

- Convert the resource to JSON
```powershell
$ConfigurableTransportSessions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

