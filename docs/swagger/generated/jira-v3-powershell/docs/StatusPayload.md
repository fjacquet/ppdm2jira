# StatusPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status | [optional] 
**Name** | **String** | The name of the status | [optional] 
**OnConflict** | **String** | The conflict strategy for the status already exists. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters; NEW - Create a new entity | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**StatusCategory** | **String** | The status category of the status. The value is case-sensitive. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusPayload = Initialize-JiraApiReferenceStatusPayload  -Description null `
 -Name null `
 -OnConflict null `
 -Pcri null `
 -StatusCategory null
```

- Convert the resource to JSON
```powershell
$StatusPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

