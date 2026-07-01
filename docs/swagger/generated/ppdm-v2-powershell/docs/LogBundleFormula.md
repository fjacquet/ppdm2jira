# LogBundleFormula
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedDate** | **String** | An ISO8601 with timezone formatted date (in server time) specifying the date and time that this formula was created. | [optional] 
**Description** | **String** | A description of the contents of the formula. | [optional] 
**Duration** | **String** | An ISO8601 duration (no date or times) to collect for the log bundle. It starts from the log bundle start date and extends backwards in time (into history).  For version 1, only day durations are allowed. The only allowable format is P[n]D, where [n] is the number of days of logs.  A duration of 1 day (P1D) is equivalent to requesting 24 hours. Based on the description of bundleStartDate, a duration of P1D with a start date of 2015-05-11 is interpreted as follows: 2015-05-11T23:59:59.999-00:00 to 2015-05-10T23:59:59.999-00:00 | [optional] 
**Id** | **String** | The unique ID of the formula. | [optional] 
**IncludeAllLogCategories** | **Boolean** | If set to true, this formula includes available log categories at the time that it is used to generate a log bundle.  If set to false, or unspecified, this formula includes only the log categories included in the log category list (which may be all current log categories). If includeAllLogCategories is set to true and the logCategoryList is populated, this value takes precedence.  In this case, all log categories are included and the logCategoryList is ignored. | [optional] 
**IncludeAllLogSources** | **Boolean** | If set to true, this formula includes all available log sources at the time that it is used to generate a log bundle.  If set to false, or unspecified, this formula includes only the log sources that are included in the log source list (which may be all current log sources).  If includeAllLogSources is set to true and the logSourceList is populated, this value takes precedence.  In this case, all log sources are included and the log source list is ignored. | [optional] 
**LogCategoryList** | [**IdLink[]**](IdLink.md) | An array of log categories that this formula contains. An empty array or null indicates none. | [optional] 
**LogSourceList** | [**IdLink[]**](IdLink.md) | An array of log sources that this formula contains. An empty array or null indicates none. | [optional] 
**Name** | **String** | A short name of the formula. | [optional] 

## Examples

- Prepare the resource
```powershell
$LogBundleFormula = Initialize-PpdmApiReferenceLogBundleFormula  -CreatedDate null `
 -Description null `
 -Duration null `
 -Id null `
 -IncludeAllLogCategories null `
 -IncludeAllLogSources null `
 -LogCategoryList null `
 -LogSourceList null `
 -Name null
```

- Convert the resource to JSON
```powershell
$LogBundleFormula | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

