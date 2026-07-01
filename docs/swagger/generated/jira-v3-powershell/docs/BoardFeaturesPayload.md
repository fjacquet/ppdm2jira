# BoardFeaturesPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BoardFeatures** | [**System.Collections.Hashtable**](Array.md) | A map of board PCRIs to the list of features to enable on each board. | [optional] 

## Examples

- Prepare the resource
```powershell
$BoardFeaturesPayload = Initialize-JiraApiReferenceBoardFeaturesPayload  -BoardFeatures null
```

- Convert the resource to JSON
```powershell
$BoardFeaturesPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

