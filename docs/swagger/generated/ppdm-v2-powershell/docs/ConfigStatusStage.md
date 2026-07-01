# ConfigStatusStage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**EndTime** | **System.DateTime** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigStatusStage = Initialize-PpdmApiReferenceConfigStatusStage  -Description null `
 -EndTime null `
 -StartTime null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ConfigStatusStage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

