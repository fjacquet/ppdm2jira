# FormatParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FitContent** | **Boolean** | Flag for fitting content to page. | [optional] 
**FormatType** | **String** | The file type of the export. For example: CSV | [optional] 
**PageOrientation** | **String** | The page orientation. | [optional] 
**PageSize** | **String** | The page size. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormatParameters = Initialize-PpdmApiReferenceFormatParameters  -FitContent null `
 -FormatType null `
 -PageOrientation null `
 -PageSize null
```

- Convert the resource to JSON
```powershell
$FormatParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

