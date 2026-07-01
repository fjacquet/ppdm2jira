# MessageSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Origin resource description | [optional] 
**Id** | **String** | Origin resource id | [optional] 
**Type** | **String** | Originating source type | 

## Examples

- Prepare the resource
```powershell
$MessageSource = Initialize-PpdmApiReferenceMessageSource  -Description null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$MessageSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

