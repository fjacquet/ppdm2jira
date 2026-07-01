# NodeSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** | Node FQDN or IP address. | [optional] 
**Id** | **String** | Node ID. | [optional] 
**Status** | **String** | Node status. | [optional] 

## Examples

- Prepare the resource
```powershell
$NodeSummary = Initialize-PpdmApiReferenceNodeSummary  -Hostname null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$NodeSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

