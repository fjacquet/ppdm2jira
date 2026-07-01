# SearchNodes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SearchNode[]**](SearchNode.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodes = Initialize-PpdmApiReferenceSearchNodes  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SearchNodes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

