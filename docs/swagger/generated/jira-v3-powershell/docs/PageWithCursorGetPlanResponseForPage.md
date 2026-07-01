# PageWithCursorGetPlanResponseForPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cursor** | **String** |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**NextPageCursor** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Total** | **Int64** |  | [optional] 
**Values** | [**GetPlanResponseForPage[]**](GetPlanResponseForPage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageWithCursorGetPlanResponseForPage = Initialize-JiraApiReferencePageWithCursorGetPlanResponseForPage  -Cursor null `
 -Last null `
 -NextPageCursor null `
 -Size null `
 -Total null `
 -Values null
```

- Convert the resource to JSON
```powershell
$PageWithCursorGetPlanResponseForPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

