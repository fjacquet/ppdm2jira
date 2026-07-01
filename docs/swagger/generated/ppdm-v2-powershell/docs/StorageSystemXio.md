# StorageSystemXio
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SerialNumber** | **String** | Serial number of the XtremIO. | [optional] 
**TotalSize** | **Double** | The total capacity in bytes of the XtremIO. | [optional] 
**TotalUsed** | **Double** | The used capacity in bytes of the XtremIO. | [optional] 
**Version** | **String** | Version of XtremIO. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemXio = Initialize-PpdmApiReferenceStorageSystemXio  -SerialNumber null `
 -TotalSize null `
 -TotalUsed null `
 -Version null
```

- Convert the resource to JSON
```powershell
$StorageSystemXio | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

