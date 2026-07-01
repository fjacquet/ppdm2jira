# ProtectionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**AssetEmbedded**](AssetEmbedded.md) |  | [optional] 
**Action** | **String** | Action type of asset rule. &quot;&quot;MOVE_TO_GROUP&quot;&quot; means move the assets in the asset rule to the related protection policy. | [optional] 
**ActionResult** | **String** | Protection policy ID that associated with the asset rule. | [optional] 
**AssignedAssetsCount** | **Int32** | Shows how many assets are assigned. | [optional] 
**Category** | **String** |  | [optional] 
**ConditionConnector** | **String** | Operator for conditions. | [optional] 
**Conditions** | [**Condition[]**](Condition.md) | Conditions of the protection rule that indicates how to filter assets. | [optional] 
**Description** | **String** | Detailed description of the asset rule. | [optional] 
**DisplayDescription** | **String** | The display format of the condition(s) | [optional] 
**Id** | **String** | ID of the asset rule | [optional] 
**InventorySourceType** | **String** | Inventory source type that the asset rule is for. | [optional] 
**LastRunAt** | **System.DateTime** | Last running time for the asset rule. | [optional] 
**LogicalOperator** | **String** |  | [optional] 
**ManagedBy** | **String** | Enum indicating the protection rule is managed by which component. If the value is null, it means the protection rule is not managed by any component, user could modify it at will; otherwise, the corresponding management component owns the modification responsibility, user modification is not recommended. | [optional] 
**Name** | **String** | The name of the asset rule. | [optional] 
**Priority** | **Int32** | Priority of the asset rule. High priority asset rule is run in advance. | [optional] 
**Rules** | [**ProtectionRule[]**](ProtectionRule.md) |  | [optional] 
**Tenant** | [**Id**](Id.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionRule = Initialize-PpdmApiReferenceProtectionRule  -Embedded null `
 -Action null `
 -ActionResult null `
 -AssignedAssetsCount null `
 -Category null `
 -ConditionConnector null `
 -Conditions null `
 -Description null `
 -DisplayDescription null `
 -Id null `
 -InventorySourceType null `
 -LastRunAt null `
 -LogicalOperator null `
 -ManagedBy null `
 -Name null `
 -Priority null `
 -Rules null `
 -Tenant null
```

- Convert the resource to JSON
```powershell
$ProtectionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

