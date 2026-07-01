# Client
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | Address of the client registered to a specific NFS export. | [optional] 
**Options** | **String** | Configuration options of the client registered to a specific NFS export. | [optional] 

## Examples

- Prepare the resource
```powershell
$Client = Initialize-PpdmApiReferenceClient  -Address null `
 -Options null
```

- Convert the resource to JSON
```powershell
$Client | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

