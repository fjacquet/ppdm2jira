# BoardsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Boards** | [**BoardPayload[]**](BoardPayload.md) | The boards to be associated with the project. | [optional] 

## Examples

- Prepare the resource
```powershell
$BoardsPayload = Initialize-JiraApiReferenceBoardsPayload  -Boards null
```

- Convert the resource to JSON
```powershell
$BoardsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

