# TargetDatabaseInfoRestoreOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AagRestoreType** | **String** | Supported AAG Restore types: - Restore to all nodes - Restore to Primary node | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetDatabaseInfoRestoreOptions = Initialize-PpdmApiReferenceTargetDatabaseInfoRestoreOptions  -AagRestoreType null
```

- Convert the resource to JSON
```powershell
$TargetDatabaseInfoRestoreOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

