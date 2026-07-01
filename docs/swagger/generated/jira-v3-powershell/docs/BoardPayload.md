# BoardPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BoardFilterJQL** | **String** | Takes in a JQL string to create a new filter. If no value is provided, it&#39;ll default to a JQL filter for the project creating | [optional] 
**CardColorStrategy** | **String** | Card color settings of the board | [optional] 
**CardLayout** | [**CardLayout**](CardLayout.md) |  | [optional] 
**CardLayouts** | [**CardLayoutField[]**](CardLayoutField.md) | Card layout settings of the board | [optional] 
**Columns** | [**BoardColumnPayload[]**](BoardColumnPayload.md) | The columns of the board | [optional] 
**Features** | [**BoardFeaturePayload[]**](BoardFeaturePayload.md) | Feature settings for the board. Deprecated: use boardFeatures capability instead. | [optional] 
**Name** | **String** | The name of the board | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**QuickFilters** | [**QuickFilterPayload[]**](QuickFilterPayload.md) | The quick filters for the board. | [optional] 
**SupportsSprint** | **Boolean** | Whether sprints are supported on the board | [optional] [default to $true]
**Swimlanes** | [**SwimlanesPayload**](SwimlanesPayload.md) |  | [optional] 
**WorkingDaysConfig** | [**WorkingDaysConfig**](WorkingDaysConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BoardPayload = Initialize-JiraApiReferenceBoardPayload  -BoardFilterJQL project &#x3D; &#39;My Project&#39; `
 -CardColorStrategy null `
 -CardLayout null `
 -CardLayouts null `
 -Columns null `
 -Features null `
 -Name null `
 -Pcri null `
 -QuickFilters null `
 -SupportsSprint null `
 -Swimlanes null `
 -WorkingDaysConfig null
```

- Convert the resource to JSON
```powershell
$BoardPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

