# ExtendedRetentionObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupLevel** | **String** | Back-up level or type from extended retention. | [optional] 
**BackupType** | **String** | Back-up level or type from extended retention. | [optional] 
**Interval** | **Int32** |  | [optional] 
**Unit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtendedRetentionObject = Initialize-PpdmApiReferenceExtendedRetentionObject  -BackupLevel null `
 -BackupType null `
 -Interval null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$ExtendedRetentionObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

