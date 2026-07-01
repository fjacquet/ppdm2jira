# ToLayoutPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Port** | **Int32** | Defines where the transition line will be connected to a status. Port 0 to 7 are acceptable values. | [optional] 
**Status** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ToLayoutPayload = Initialize-JiraApiReferenceToLayoutPayload  -Port 1 `
 -Status null
```

- Convert the resource to JSON
```powershell
$ToLayoutPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

