# TargetNasSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **String** | File/folder path for file-level recovery | [optional] 
**PathHash** | **String** | Hash of the full path of the file / folder. the hash can be got by search index. | [optional] 
**SliceSsid** | **String** | SSID of file/folder for file-level recovery, the field can be got by search index. | [optional] 
**Type** | **String** | Type of sources selected files/folder for file-level recovery. Enum: FOLDER, FILE | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetNasSource = Initialize-PpdmApiReferenceTargetNasSource  -Path null `
 -PathHash null `
 -SliceSsid null `
 -Type null
```

- Convert the resource to JSON
```powershell
$TargetNasSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

