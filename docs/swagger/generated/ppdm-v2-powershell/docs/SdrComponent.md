# SdrComponent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupPath** | **String** | Toggle indicating backup path. | [optional] 
**BackupStatus** | **String** | Toggle indicating backup status. | [optional] 
**BackupsEnabled** | **Boolean** | Toggle indicating whether the data component actively creates backups. Default is true. | [optional] [default to $true]
**Id** | **String** | Unique ID of the data component. | [optional] 
**IsComponentInternal** | **Boolean** | Whether component is internal. | [optional] 
**LastActivityId** | **String** | Activity ID of the data component. | [optional] 
**Name** | **String** | Name of the data component. | [optional] 
**Version** | **String** | Version of the data component. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrComponent = Initialize-PpdmApiReferenceSdrComponent  -BackupPath null `
 -BackupStatus null `
 -BackupsEnabled null `
 -Id null `
 -IsComponentInternal null `
 -LastActivityId null `
 -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SdrComponent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

