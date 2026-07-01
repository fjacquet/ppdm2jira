# ModelFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetCount** | **Int32** |  | [optional] 
**Category** | **String** | Category of the filter.  Enum: PRIMITIVE | COMPOUND | [optional] 
**Conditions** | [**FilterCondition[]**](FilterCondition.md) |  | 
**CreatedAt** | **System.DateTime** | Date when filter was created. | [optional] 
**Description** | **String** | Description of the filter. | [optional] 
**FilterType** | **String** | One of [exclude, include]. | 
**Filters** | [**ModelFilter[]**](ModelFilter.md) | Array of primitive filter IDs (filterIds). | [optional] 
**Id** | **String** | ID of the filter. | [optional] 
**LastRunAt** | **System.DateTime** | The last run date of this filter. | [optional] 
**LogicalOperator** | **String** | Logical operators between multiple conditions. AND/OR. For R2, default logical operator is AND. | [optional] 
**Name** | **String** | Name of the filter. | 
**ObjectSubtype** | **String** | A filter cannot be applied on all objects with the same object type (objectType). Like Virtual Machine (VM) name filter, can be only applied on Virtual Machine (VM) assets. This property is used to do filter assignment validation.  If objectType is ASSET, objectSubtype is VMWARE_VIRTUAL_MACHINE | ORACLE_DATABASE | MICROSOFT_SQL_DATABASE | FILE_SYSTEM.  If objectType is VM_DISK, objectSubtype is VMDK | VHD. | [optional] 
**ObjectType** | **String** | The type of object on which the filter is applied. Enum: &quot;&quot;FILE_SYSTEM_FILE | ASSET | VM_DISK&quot;&quot;. | 
**Priority** | **Int32** | Each filter has a unique priority value, which is 1 ~ N. The smaller number has the higher priority. | [optional] 
**ProtectionPolicyCount** | **Int32** |  | [optional] 
**Purpose** | **String** | Purpose of the filter.  Enum: FILE_BACKUP_FILTER | ASSET_RULE | VM_DISK_BACKUP_FILTER | RESOURCE_GROUP_FILTER | ASSET_SELECTION | 
**TemplateName** | **String** | The name of the template for the UI display (if the filter is derived from a template). | [optional] 
**UpdatedAt** | **System.DateTime** | Date when filter was last modified. | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelFilter = Initialize-PpdmApiReferenceModelFilter  -AssetCount null `
 -Category null `
 -Conditions null `
 -CreatedAt null `
 -Description null `
 -FilterType null `
 -Filters null `
 -Id null `
 -LastRunAt null `
 -LogicalOperator null `
 -Name null `
 -ObjectSubtype null `
 -ObjectType null `
 -Priority null `
 -ProtectionPolicyCount null `
 -Purpose null `
 -TemplateName null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ModelFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

