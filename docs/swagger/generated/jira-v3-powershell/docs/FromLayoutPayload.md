# FromLayoutPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromPort** | **Int32** | The port that the transition can be made from | [optional] 
**Status** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**ToPortOverride** | **Int32** | The port that the transition goes to | [optional] 

## Examples

- Prepare the resource
```powershell
$FromLayoutPayload = Initialize-JiraApiReferenceFromLayoutPayload  -FromPort null `
 -Status null `
 -ToPortOverride null
```

- Convert the resource to JSON
```powershell
$FromLayoutPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

