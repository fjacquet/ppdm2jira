# TargetMandatoryFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**System.Collections.Hashtable**](Fields.md) | Contains the value of mandatory fields | 

## Examples

- Prepare the resource
```powershell
$TargetMandatoryFields = Initialize-JiraApiReferenceTargetMandatoryFields  -Fields null
```

- Convert the resource to JSON
```powershell
$TargetMandatoryFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

