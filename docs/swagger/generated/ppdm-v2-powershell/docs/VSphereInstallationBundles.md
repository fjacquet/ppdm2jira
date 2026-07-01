# VSphereInstallationBundles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**VSphereInstallationBundle[]**](VSphereInstallationBundle.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VSphereInstallationBundles = Initialize-PpdmApiReferenceVSphereInstallationBundles  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$VSphereInstallationBundles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

