# InventorySource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**InventorySourceEmbedded**](InventorySourceEmbedded.md) |  | [optional] 
**Address** | **String** | IP address or hostname of the inventory source. | [optional] 
**Credentials** | [**Id**](Id.md) |  | [optional] 
**Details** | [**InventorySourceDetails**](InventorySourceDetails.md) |  | [optional] 
**ExternalTenant** | [**InventorySourceExternalTenant**](InventorySourceExternalTenant.md) |  | [optional] 
**Id** | **String** | ID of the inventory source. | [optional] 
**LastDiscovered** | **System.DateTime** | The last time the discovery was performed for the inventory source. | [optional] [readonly] 
**LastDiscoveryResult** | [**DiscoveryResult**](DiscoveryResult.md) |  | [optional] 
**LastDiscoveryTaskId** | **String** | The task ID of the inventory source when last discovered. | [optional] [readonly] 
**VarLocal** | **Boolean** | Indicates whether the inventory source is integrated storage. Valid values are the following: - True (This is integrated storage) - False (Default is false)  | [optional] 
**MultiFactorAuthenticationEnabled** | **Boolean** | Indicates whether an InventorySource, or inventorySource related feature such as FLR for vCenter, supports multi-factor authentication. Valid values are the following: - True (multi-factor authentication is enabled for the inventorySource) - False  | [optional] 
**Name** | **String** | User-customized name for the inventory source. | 
**Port** | **Int32** | The port of the inventory source. | [optional] 
**Purpose** | **String** | Indicates how the inventory source is used. | [optional] 
**Type** | **String** | Type of the inventory source. | 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] [readonly] 
**Vendor** | [**VendorEnum**](VendorEnum.md) |  | [optional] 
**Version** | **String** | Version of the inventory source. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$InventorySource = Initialize-PpdmApiReferenceInventorySource  -Embedded null `
 -Address null `
 -Credentials null `
 -Details null `
 -ExternalTenant null `
 -Id null `
 -LastDiscovered null `
 -LastDiscoveryResult null `
 -LastDiscoveryTaskId null `
 -VarLocal null `
 -MultiFactorAuthenticationEnabled null `
 -Name null `
 -Port null `
 -Purpose null `
 -Type null `
 -UnsupportedFeatures null `
 -Vendor null `
 -Version null
```

- Convert the resource to JSON
```powershell
$InventorySource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

