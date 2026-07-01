# WorkingDaysConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Friday** | **Boolean** |  | [optional] 
**Id** | **Int64** |  | [optional] 
**Monday** | **Boolean** |  | [optional] 
**NonWorkingDays** | [**NonWorkingDay[]**](NonWorkingDay.md) |  | [optional] 
**Saturday** | **Boolean** |  | [optional] 
**Sunday** | **Boolean** |  | [optional] 
**Thursday** | **Boolean** |  | [optional] 
**TimezoneId** | **String** |  | [optional] 
**Tuesday** | **Boolean** |  | [optional] 
**Wednesday** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkingDaysConfig = Initialize-JiraApiReferenceWorkingDaysConfig  -Friday null `
 -Id null `
 -Monday null `
 -NonWorkingDays null `
 -Saturday null `
 -Sunday null `
 -Thursday null `
 -TimezoneId null `
 -Tuesday null `
 -Wednesday null
```

- Convert the resource to JSON
```powershell
$WorkingDaysConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

