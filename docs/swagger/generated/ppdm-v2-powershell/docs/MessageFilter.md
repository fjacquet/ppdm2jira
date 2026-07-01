# MessageFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Facility** | **String** | Available facilities. | 
**MinSeverity** | **String** | Available minimum serverities. | 

## Examples

- Prepare the resource
```powershell
$MessageFilter = Initialize-PpdmApiReferenceMessageFilter  -Facility null `
 -MinSeverity null
```

- Convert the resource to JSON
```powershell
$MessageFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

