# InfrastructureNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**InfrastructureNodeDetails**](InfrastructureNodeDetails.md) |  | [optional] 
**Expandable** | **Boolean** | Indicates whether the node is expandable. | [optional] 
**Id** | **String** | Node ID. | [optional] 
**Name** | **String** | The name of this node. | [optional] 
**Parents** | [**ParentNode[]**](ParentNode.md) | parent nodes information. | [optional] 
**Selectable** | **Boolean** | Indicates whether this node is selectable. | [optional] 
**SelectionStatus** | **String** | Indicates whether this node is selected in Protection Policy or Resource Group. | [optional] 
**Type** | **String** | The infrastructure node types for SQL, FS, VMware, Protection Group, PowerMax | [optional] 

## Examples

- Prepare the resource
```powershell
$InfrastructureNode = Initialize-PpdmApiReferenceInfrastructureNode  -Details null `
 -Expandable null `
 -Id null `
 -Name null `
 -Parents null `
 -Selectable null `
 -SelectionStatus null `
 -Type null
```

- Convert the resource to JSON
```powershell
$InfrastructureNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

