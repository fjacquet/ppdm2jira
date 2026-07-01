# InfrastructureNodes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**InfrastructureNode[]**](InfrastructureNode.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InfrastructureNodes = Initialize-PpdmApiReferenceInfrastructureNodes  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$InfrastructureNodes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

