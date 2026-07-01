# TransitionLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromPort** | **Int32** | The from port number. | [optional] 
**FromStatusReference** | **String** | The from status reference. | [optional] 
**ToPort** | **Int32** | The to port number. | [optional] 

## Examples

- Prepare the resource
```powershell
$TransitionLink = Initialize-JiraApiReferenceTransitionLink  -FromPort null `
 -FromStatusReference null `
 -ToPort null
```

- Convert the resource to JSON
```powershell
$TransitionLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

