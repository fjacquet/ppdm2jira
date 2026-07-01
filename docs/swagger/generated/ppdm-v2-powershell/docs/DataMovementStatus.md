# DataMovementStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ElapsedTime** | **Int32** |  | [optional] 
**EndTime** | **System.DateTime** |  | [optional] 
**FilesEligible** | **Int32** |  | [optional] 
**FilesFailed** | **Int32** |  | [optional] 
**FilesInspected** | **Int32** |  | [optional] 
**FilesMoved** | **Int32** |  | [optional] 
**Mode** | **String** |  | [optional] 
**PercentComplete** | **Int32** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataMovementStatus = Initialize-PpdmApiReferenceDataMovementStatus  -ElapsedTime null `
 -EndTime null `
 -FilesEligible null `
 -FilesFailed null `
 -FilesInspected null `
 -FilesMoved null `
 -Mode null `
 -PercentComplete null `
 -StartTime null `
 -State null
```

- Convert the resource to JSON
```powershell
$DataMovementStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

