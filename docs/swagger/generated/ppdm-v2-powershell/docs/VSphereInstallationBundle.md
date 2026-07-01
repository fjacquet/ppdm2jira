# VSphereInstallationBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateInstalled** | **String** | The date the VIB was installed. | [optional] 
**Name** | **String** | Name of the vSphere Installation Bundle. | [optional] 
**ResourceId** | **String** | The id of the resource target. | 
**ResourceType** | **String** | The resource type target where the details of the vib are fetched from. | 
**Status** | **String** | The installation status of the VIB. | [optional] 
**Version** | **String** | The version of the VIB that is installed. | [optional] 
**VersionsAvailableForUpgrade** | **String[]** | List of versions available for upgrade. | [optional] 

## Examples

- Prepare the resource
```powershell
$VSphereInstallationBundle = Initialize-PpdmApiReferenceVSphereInstallationBundle  -DateInstalled null `
 -Name null `
 -ResourceId null `
 -ResourceType null `
 -Status null `
 -Version null `
 -VersionsAvailableForUpgrade null
```

- Convert the resource to JSON
```powershell
$VSphereInstallationBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

