# Node
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Components** | [**SubComponent[]**](SubComponent.md) |  | [optional] 
**DisplayVersion** | **String** |  | [optional] 
**Id** | **String** |  | 
**LastNodeStatusUpdated** | **System.DateTime** | The timestamp of the last node status change. | [optional] 
**LastUpdated** | **System.DateTime** | The timestamp of the last node update. | [optional] 
**LastUpdatedBy** | **String** |  | [optional] 
**PowerProtectModel** | **String** | The model of the PowerProtect Data Manager. | [optional] 
**PowerProtectVersion** | **String** | The version of the PowerProtect Data Manager. | [optional] 
**Restrictions** | [**Restrictions[]**](Restrictions.md) |  | [optional] 
**Status** | **String** | The current status of the PowerProtect Data Manager appliance. | 
**StatusDescription** | **String** | The detailed information about the current appliance status. | [optional] 
**SystemId** | **String** |  | [optional] 
**UptimeInDays** | **String** | The number of days the PowerProtect Data Manager has been running. | [optional] 
**Version** | **String** | The version of the PowerProtect Data Manager or the PowerProtect Data Manager Appliance. | [optional] 

## Examples

- Prepare the resource
```powershell
$Node = Initialize-PpdmApiReferenceNode  -Components null `
 -DisplayVersion null `
 -Id null `
 -LastNodeStatusUpdated null `
 -LastUpdated null `
 -LastUpdatedBy null `
 -PowerProtectModel null `
 -PowerProtectVersion null `
 -Restrictions null `
 -Status null `
 -StatusDescription null `
 -SystemId null `
 -UptimeInDays null `
 -Version null
```

- Convert the resource to JSON
```powershell
$Node | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

