# RemoteUpgradePackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Checksum** | **String** |  | [optional] 
**Criticality** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] 
**MadeAvailable** | **System.DateTime** |  | [optional] 
**PackageName** | **String** |  | [optional] 
**PackagePath** | **String** |  | [optional] 
**PackageVersion** | **String** |  | [optional] 
**ReleaseNotesLink** | **String** |  | [optional] 
**SizeInBytes** | **Double** |  | [optional] 
**State** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoteUpgradePackage = Initialize-PpdmApiReferenceRemoteUpgradePackage  -Checksum null `
 -Criticality null `
 -Description null `
 -ExternalId null `
 -Id null `
 -LastUpdated null `
 -MadeAvailable null `
 -PackageName null `
 -PackagePath null `
 -PackageVersion null `
 -ReleaseNotesLink null `
 -SizeInBytes null `
 -State null `
 -Title null
```

- Convert the resource to JSON
```powershell
$RemoteUpgradePackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

