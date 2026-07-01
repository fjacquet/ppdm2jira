# LogExport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**LastModifyTime** | **System.DateTime** | An ISO8601 date and time with timezone (specified in server time) of the date that the log bundle was cancelled, failed, or completed. | [optional] 
**LogExportTargetActivityId** | **String** |  | [optional] 
**Progress** | **Decimal** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogExport = Initialize-PpdmApiReferenceLogExport  -Id null `
 -LastModifyTime null `
 -LogExportTargetActivityId null `
 -Progress null `
 -Status null
```

- Convert the resource to JSON
```powershell
$LogExport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

