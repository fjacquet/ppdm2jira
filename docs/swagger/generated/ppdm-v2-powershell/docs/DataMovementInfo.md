# DataMovementInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Days** | **String** |  | [optional] 
**RepeatEveryNthWeeks** | **Int32** |  | [optional] 
**Status** | [**DataMovementStatus**](DataMovementStatus.md) |  | [optional] 
**TimeHour** | **String** |  | [optional] 
**TimeMin** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataMovementInfo = Initialize-PpdmApiReferenceDataMovementInfo  -Days null `
 -RepeatEveryNthWeeks null `
 -Status null `
 -TimeHour null `
 -TimeMin null
```

- Convert the resource to JSON
```powershell
$DataMovementInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

