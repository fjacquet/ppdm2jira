# ActivityStep
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Additional description. | [optional] 
**DurationInMillis** | **Int64** | Time taken to complete the step in milliseconds. | [optional] 
**EndTime** | **System.DateTime** | End Time of the Step. | [optional] 
**Name** | **String** | Name of the step. Unique within the list of steps. | 
**StartTime** | **System.DateTime** | Start time of the step. | [optional] 
**Status** | **String** | Status of the step. | 

## Examples

- Prepare the resource
```powershell
$ActivityStep = Initialize-PpdmApiReferenceActivityStep  -Description null `
 -DurationInMillis null `
 -EndTime null `
 -Name null `
 -StartTime null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ActivityStep | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

