# AssetNas
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileStubExists** | **Boolean** | Indicative if the NAS share has cloud tiered data | [optional] 
**FileSystemName** | **String** | The name of the file system of which the share is a part of. | [optional] 
**FileSystemPath** | **String** | The local file system path of the nas share. | [optional] 
**InventorySourceId** | **String** | The id of the inventory source this NAS asset belongs to | [optional] 
**InventorySourceName** | **String** | The name of the inventory source this NAS asset belongs to | [optional] 
**NasServer** | [**AssetNasNasServer**](AssetNasNasServer.md) |  | [optional] 
**PrefetcherEnabled** | **Boolean** | Enables the Network Attached Storage (NAS) performance enhancement to handle NAS shares with many small files more efficiently. | [optional] 
**Protocol** | **String** | The protocol type of the NAS share, such as NFS or CIFS. | [optional] 
**ProtocolVersion** | **String** | The protocol version of NAS share, e.g. &quot;&quot;v1&quot;&quot;, &quot;&quot;v2&quot;&quot;, &quot;&quot;v3&quot;&quot;. Defaults to an empty string. | [optional] 
**VolumeType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetNas = Initialize-PpdmApiReferenceAssetNas  -FileStubExists null `
 -FileSystemName null `
 -FileSystemPath null `
 -InventorySourceId null `
 -InventorySourceName null `
 -NasServer null `
 -PrefetcherEnabled null `
 -Protocol null `
 -ProtocolVersion null `
 -VolumeType null
```

- Convert the resource to JSON
```powershell
$AssetNas | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

