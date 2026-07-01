# AssetContainerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** | Category of the container. | [optional] 
**Id** | **String** | ID of the container. | [optional] 
**Name** | **String** | Name of the container. | [optional] 
**Version** | **String** | Version of the container. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetContainerRef = Initialize-PpdmApiReferenceAssetContainerRef  -Category null `
 -Id null `
 -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AssetContainerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

