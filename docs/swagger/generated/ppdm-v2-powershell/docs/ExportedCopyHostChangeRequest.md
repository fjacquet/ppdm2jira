# ExportedCopyHostChangeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalId** | **String** | The ID of host or host group. | 
**Name** | **String** | The name of host or host group. | [optional] 
**OperationType** | **String** |  | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExportedCopyHostChangeRequest = Initialize-PpdmApiReferenceExportedCopyHostChangeRequest  -ExternalId null `
 -Name null `
 -OperationType null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ExportedCopyHostChangeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

