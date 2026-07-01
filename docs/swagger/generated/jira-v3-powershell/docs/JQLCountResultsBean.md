# JQLCountResultsBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int64** | Number of issues matching JQL query. | [optional] 

## Examples

- Prepare the resource
```powershell
$JQLCountResultsBean = Initialize-JiraApiReferenceJQLCountResultsBean  -Count null
```

- Convert the resource to JSON
```powershell
$JQLCountResultsBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

