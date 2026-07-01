# NfsExport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActiveNfsv3Clients** | **Int32** | Number of active NFSv3 clients that are registered for the NFS export. | [optional] 
**ActiveNfsv4Clients** | **Int32** | Number of active NFSv4 clients that are registered for the NFS export. | [optional] 
**Clients** | [**Client[]**](Client.md) | List of clients that are registered for the NFS export. | [optional] 
**ExportId** | **String** | Export ID of the NFS export configuration that is retrieved from the storage system where the NFS export is stored. | [optional] 
**MtreeName** | **String** | Name of the mtree for which the NFS export is configured. | [optional] 
**Nfsv3Mounts** | **Int32** | Number of NFSv3 mounts that are active on the NFS export. | [optional] 
**NumberOfClients** | **Int32** | Number of clients that are registered for the NFS export. | [optional] 
**Path** | **String** | Path of the asset for which the NFS export is configured. | [optional] 
**StorageArrayId** | **String** | Storage array ID of the storage system where the NFS export is configured. | [optional] 

## Examples

- Prepare the resource
```powershell
$NfsExport = Initialize-PpdmApiReferenceNfsExport  -ActiveNfsv3Clients null `
 -ActiveNfsv4Clients null `
 -Clients null `
 -ExportId null `
 -MtreeName null `
 -Nfsv3Mounts null `
 -NumberOfClients null `
 -Path null `
 -StorageArrayId null
```

- Convert the resource to JSON
```powershell
$NfsExport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

