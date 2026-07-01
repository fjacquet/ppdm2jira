# CopyNasSkippedElements
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Incremental** | **Int32** |  | [optional] 
**Total** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyNasSkippedElements = Initialize-PpdmApiReferenceCopyNasSkippedElements  -Incremental null `
 -Total null
```

- Convert the resource to JSON
```powershell
$CopyNasSkippedElements | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

