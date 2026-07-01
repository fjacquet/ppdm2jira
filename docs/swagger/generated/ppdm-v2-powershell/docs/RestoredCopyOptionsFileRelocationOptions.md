# RestoredCopyOptionsFileRelocationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetArchLogFileLocations** | **String[]** | The target file path where all database archive log files are relocated during the restore must have a validated file system path when fileRelocationType is &quot;&quot;CUSTOM_LOCATION&quot;&quot;. This property must be an array of paths. The maximum value for logfilelocations is 31. | [optional] 
**TargetControlFiles** | **String[]** | This property describes Oracle options. The target file path where all database control files are relocated during the restore must have a validated file system path when fileRelocationType is &quot;&quot;CUSTOM_LOCATION&quot;&quot;. A maximum of eight control files is supported for an Oracle database. | [optional] 
**TargetDataFileLocation** | **String** | The target file path where all database data files will be relocated during the restore which should have a valid file system path when  fileRelocationType is &quot;&quot;CUSTOM_LOCATION&quot;&quot;. | [optional] 
**TargetFRAFileLocation** | **String** | The target file path specifies the Fast Recovery Area. | [optional] 
**TargetLogFileLocation** | **String** | The target file path where all database log files will be relocated during the restore which should have a validate file system path when fileRelocationType is &quot;&quot;CUSTOM_LOCATION&quot;&quot; | [optional] 
**TargetRedoLogFileLocations** | **String[]** | The target file path where all database redo log files are relocated during the restore must have a validated file system path when fileRelocationType is &quot;&quot;CUSTOM_LOCATION&quot;&quot;. This property must be an array of paths. The maximum log file location is five. | [optional] 
**TargetRootLevelFolderLocation** | **String** | The target root level path where all the database related files will be relocated to single path. | [optional] 
**Type** | **String** | ORIGINAL_LOCATION: This indicates that the database is being restored to the original location DEFAULT_LOCATION: Indicates the user is restoring the database to an alternate location and has specified to restore the database to the default data and log file paths of the target instance specified. CUSTOM_LOCATION: Indicates the user is restoring the database to an alternate location and has specified to restore the database to the default data and log file paths specified. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopyOptionsFileRelocationOptions = Initialize-PpdmApiReferenceRestoredCopyOptionsFileRelocationOptions  -TargetArchLogFileLocations null `
 -TargetControlFiles null `
 -TargetDataFileLocation null `
 -TargetFRAFileLocation null `
 -TargetLogFileLocation null `
 -TargetRedoLogFileLocations null `
 -TargetRootLevelFolderLocation null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RestoredCopyOptionsFileRelocationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

