# ConfigurationsListParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldIdsOrKeys** | **String[]** | List of IDs or keys of the custom fields. It can be a mix of IDs and keys in the same query. | 

## Examples

- Prepare the resource
```powershell
$ConfigurationsListParameters = Initialize-JiraApiReferenceConfigurationsListParameters  -FieldIdsOrKeys null
```

- Convert the resource to JSON
```powershell
$ConfigurationsListParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

