# ParentNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | parent node id. | [optional] 
**Name** | **String** | parent node name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ParentNode = Initialize-PpdmApiReferenceParentNode  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ParentNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

