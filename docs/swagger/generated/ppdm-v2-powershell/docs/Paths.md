# Paths
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **String** | Path constructed using diskName, assetId, copyStartDate | 
**PathHash** | **String** | Asset_id acts as pathHash | 
**SliceSsid** | **String** | DiskName  | 
**Type** | **String** | &quot;&quot;type&quot;&quot; value has to be set as FILE/FOLDER accordingly. | 

## Examples

- Prepare the resource
```powershell
$Paths = Initialize-PpdmApiReferencePaths  -Path null `
 -PathHash null `
 -SliceSsid null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Paths | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

