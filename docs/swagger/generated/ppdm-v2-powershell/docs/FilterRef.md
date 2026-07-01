# FilterRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** |  | [optional] 
**Conditions** | [**FilterCondition[]**](FilterCondition.md) |  | [optional] 
**FilterType** | **String** |  | [optional] 
**Filters** | [**ModelFilter[]**](ModelFilter.md) |  | [optional] 
**Id** | **String** | The ID of the filter. | [optional] 
**LogicalOperator** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**ObjectSubtype** | **String** |  | [optional] 
**ObjectType** | **String** |  | [optional] 
**Priority** | **Int32** |  | [optional] 
**Purpose** | **String** |  | [optional] 
**TemplateName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterRef = Initialize-PpdmApiReferenceFilterRef  -Category null `
 -Conditions null `
 -FilterType null `
 -Filters null `
 -Id null `
 -LogicalOperator null `
 -Name null `
 -ObjectSubtype null `
 -ObjectType null `
 -Priority null `
 -Purpose null `
 -TemplateName null
```

- Convert the resource to JSON
```powershell
$FilterRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

