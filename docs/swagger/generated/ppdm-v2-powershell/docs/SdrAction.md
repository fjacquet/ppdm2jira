# SdrAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupRef** | [**SdrBackupRef**](SdrBackupRef.md) |  | [optional] 
**ElapsedSeconds** | **Int32** | Server disaster recovery action elapsed seconds. | [optional] 
**VarError** | **String** | Server disaster recovery action error. | [optional] 
**Id** | **String** | Server disaster recovery action ID. | [optional] 
**Progress** | **Int32** | Server disaster recovery action progress status. | [optional] 
**StartTime** | **System.DateTime** | Server disaster recovery action start time. | [optional] 
**State** | **String** | Server disaster recovery action state. | [optional] 
**Type** | **String** | Server disaster recovery type. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrAction = Initialize-PpdmApiReferenceSdrAction  -BackupRef null `
 -ElapsedSeconds null `
 -VarError null `
 -Id null `
 -Progress null `
 -StartTime null `
 -State null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SdrAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

