# SwimlanesPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomSwimlanes** | [**SwimlanePayload[]**](SwimlanePayload.md) | The custom swimlane definitions. | [optional] 
**DefaultCustomSwimlaneName** | **String** | The name of the custom swimlane to use for work items that don&#39;t match any other swimlanes. | [optional] 
**SwimlaneStrategy** | **String** | The swimlane strategy for the board. | [optional] 

## Examples

- Prepare the resource
```powershell
$SwimlanesPayload = Initialize-JiraApiReferenceSwimlanesPayload  -CustomSwimlanes null `
 -DefaultCustomSwimlaneName null `
 -SwimlaneStrategy null
```

- Convert the resource to JSON
```powershell
$SwimlanesPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

