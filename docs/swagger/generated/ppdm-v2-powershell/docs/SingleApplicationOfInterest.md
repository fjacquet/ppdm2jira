# SingleApplicationOfInterest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**PlcCompatible** | **Boolean** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SingleApplicationOfInterest = Initialize-PpdmApiReferenceSingleApplicationOfInterest  -ApiVersion null `
 -Name null `
 -PlcCompatible null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SingleApplicationOfInterest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

