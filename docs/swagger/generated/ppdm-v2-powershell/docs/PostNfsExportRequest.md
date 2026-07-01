# PostNfsExportRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Clients** | **String[]** | List of client addresses for which the NFS export is configured. The client must be a valid IP address, hostname, or netgroup IP. | 
**Path** | **String** | Path of the asset for which the NFS export is configured. An example of an asset path: SU/TLP/relativeNfsExportPath. | 

## Examples

- Prepare the resource
```powershell
$PostNfsExportRequest = Initialize-PpdmApiReferencePostNfsExportRequest  -Clients null `
 -Path null
```

- Convert the resource to JSON
```powershell
$PostNfsExportRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

