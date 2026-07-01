# TargetStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**System.Collections.Hashtable**](Array.md) | An object with the key as the ID of the target status and value with the list of the IDs of the current source statuses. | 

## Examples

- Prepare the resource
```powershell
$TargetStatus = Initialize-JiraApiReferenceTargetStatus  -Statuses null
```

- Convert the resource to JSON
```powershell
$TargetStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

