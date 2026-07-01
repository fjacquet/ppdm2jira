# AppHostInstalledApplications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of application. | 
**Type** | **String** | Type of application. | 
**Version** | **String** | Version of application. | [optional] 

## Examples

- Prepare the resource
```powershell
$AppHostInstalledApplications = Initialize-PpdmApiReferenceAppHostInstalledApplications  -Name null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AppHostInstalledApplications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

