# ProjectPinAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | The action to perform: PIN or UNPIN. | 
**ProjectIdOrKey** | **String** | The project ID or key. | 

## Examples

- Prepare the resource
```powershell
$ProjectPinAction = Initialize-JiraApiReferenceProjectPinAction  -Action null `
 -ProjectIdOrKey null
```

- Convert the resource to JSON
```powershell
$ProjectPinAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

