# PatchContent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | **String** |  | [optional] 
**Op** | **String** |  | 
**Path** | **String** |  | 
**Value** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchContent = Initialize-PpdmApiReferencePatchContent  -VarFrom null `
 -Op null `
 -Path null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PatchContent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

