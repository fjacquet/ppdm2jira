# AppHostApplicationsOfInterest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InstalledApplications** | [**AppHostInstalledApplications[]**](AppHostInstalledApplications.md) | List of third party applications installed on host. | [optional] 
**Name** | **String** |  | [optional] 
**PushHostCredential** | **Boolean** |  | [optional] 
**Type** | **String** |  | [optional] 
**UpdateCapable** | **Boolean** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppHostApplicationsOfInterest = Initialize-PpdmApiReferenceAppHostApplicationsOfInterest  -InstalledApplications null `
 -Name null `
 -PushHostCredential null `
 -Type null `
 -UpdateCapable null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AppHostApplicationsOfInterest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

