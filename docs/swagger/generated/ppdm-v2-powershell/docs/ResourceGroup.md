# ResourceGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Created time for the resource group. | [optional] [readonly] 
**CreatedBy** | **String** |  | [optional] [readonly] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NumberOfResources** | **Int64** | The total assigned resources in this resource group | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | Update time for the resource group. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ResourceGroup = Initialize-PpdmApiReferenceResourceGroup  -CreatedAt null `
 -CreatedBy null `
 -Description null `
 -Id null `
 -Name null `
 -NumberOfResources null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ResourceGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

