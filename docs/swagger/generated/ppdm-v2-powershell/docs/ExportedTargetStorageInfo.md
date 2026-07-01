# ExportedTargetStorageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExportDevices** | **String[]** |  | [optional] 
**HostDetails** | [**ExportedTargetStorageHostDetail[]**](ExportedTargetStorageHostDetail.md) | Contains a list of host details. | [optional] 
**InitiatorGroups** | **String** |  | [optional] 
**LunMaps** | **String** |  | [optional] 
**ProxyVolumeDetails** | [**ExportedTargetStorageProxyVolumeDetails[]**](ExportedTargetStorageProxyVolumeDetails.md) | Contains a list of proxy volume details. | [optional] 
**RestoreSessionId** | **String** | The restore session ID. | [optional] 
**RestoredCopyId** | **String** | The restored copy ID for current exported copy. | [optional] 
**TargetArray** | **String** |  | [optional] 
**TargetGroupName** | **String** |  | [optional] 
**TargetHosts** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedTargetStorageInfo = Initialize-PpdmApiReferenceExportedTargetStorageInfo  -ExportDevices null `
 -HostDetails null `
 -InitiatorGroups null `
 -LunMaps null `
 -ProxyVolumeDetails null `
 -RestoreSessionId null `
 -RestoredCopyId null `
 -TargetArray null `
 -TargetGroupName null `
 -TargetHosts null
```

- Convert the resource to JSON
```powershell
$ExportedTargetStorageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

