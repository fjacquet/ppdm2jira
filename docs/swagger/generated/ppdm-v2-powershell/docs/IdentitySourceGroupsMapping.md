# IdentitySourceGroupsMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | **String[]** | Identity source groups. | 
**IdentitySourceId** | **String** | Identity source ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentitySourceGroupsMapping = Initialize-PpdmApiReferenceIdentitySourceGroupsMapping  -Groups null `
 -IdentitySourceId null
```

- Convert the resource to JSON
```powershell
$IdentitySourceGroupsMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

