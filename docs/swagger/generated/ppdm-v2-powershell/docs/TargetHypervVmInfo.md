# TargetHypervVmInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FlrSessionId** | **String** | The unique ID for the file-level restore (FLR) session that was created to browse the mounted backup copy. | [optional] 
**Parallelism** | **Int32** |  | [optional] 
**SourceAssetId** | **String** |  | [optional] 
**Sources** | **String[]** | List of file and directory paths to be restored. | [optional] 
**TargetAssetId** | **String** |  | [optional] 
**TargetHypervisorServerId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetHypervVmInfo = Initialize-PpdmApiReferenceTargetHypervVmInfo  -FlrSessionId null `
 -Parallelism null `
 -SourceAssetId null `
 -Sources null `
 -TargetAssetId null `
 -TargetHypervisorServerId null
```

- Convert the resource to JSON
```powershell
$TargetHypervVmInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

