# NonWorkingDay
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** |  | [optional] 
**Iso8601Date** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NonWorkingDay = Initialize-JiraApiReferenceNonWorkingDay  -Id null `
 -Iso8601Date null
```

- Convert the resource to JSON
```powershell
$NonWorkingDay | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

