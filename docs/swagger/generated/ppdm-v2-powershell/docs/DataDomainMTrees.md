# DataDomainMTrees
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**DataDomainMTree[]**](DataDomainMTree.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainMTrees = Initialize-PpdmApiReferenceDataDomainMTrees  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$DataDomainMTrees | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

