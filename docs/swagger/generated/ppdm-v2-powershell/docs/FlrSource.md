# FlrSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyNaturalId** | **String** |  | [optional] 
**Paths** | [**Paths[]**](Paths.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FlrSource = Initialize-PpdmApiReferenceFlrSource  -CopyNaturalId null `
 -Paths null
```

- Convert the resource to JSON
```powershell
$FlrSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

