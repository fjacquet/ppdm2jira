# Tag
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CategoryDescription** | **String** | Category description of the tag. | [optional] 
**CategoryName** | **String** | Category name of the tag. | 
**DeletedAt** | **System.DateTime** |  | [optional] 
**Description** | **String** | Description of the tag. | [optional] 
**FullyQualifiedTagName** | **String** | Fully qualified name of the tag. | 
**Id** | **String** | ID of the tag. | 
**Name** | **String** | Name of the tag. | 
**Sources** | [**TagSource[]**](TagSource.md) |  | 

## Examples

- Prepare the resource
```powershell
$Tag = Initialize-PpdmApiReferenceTag  -CategoryDescription null `
 -CategoryName null `
 -DeletedAt null `
 -Description null `
 -FullyQualifiedTagName null `
 -Id null `
 -Name null `
 -Sources null
```

- Convert the resource to JSON
```powershell
$Tag | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

