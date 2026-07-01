# CardLayout
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ShowDaysInColumn** | **Boolean** | Whether to show days in column | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CardLayout = Initialize-JiraApiReferenceCardLayout  -ShowDaysInColumn null
```

- Convert the resource to JSON
```powershell
$CardLayout | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

