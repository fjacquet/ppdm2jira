# Logging
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configurable** | **Boolean** |  | [optional] 
**LogLocation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Logging = Initialize-PpdmApiReferenceLogging  -Configurable null `
 -LogLocation null
```

- Convert the resource to JSON
```powershell
$Logging | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

