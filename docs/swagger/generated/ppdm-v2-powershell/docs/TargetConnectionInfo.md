# TargetConnectionInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionType** | **String** |  | [optional] 
**CredsId** | **String** |  | [optional] 
**ExtraInfo** | [**TargetConnectionExtraInfo[]**](TargetConnectionExtraInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetConnectionInfo = Initialize-PpdmApiReferenceTargetConnectionInfo  -ConnectionType null `
 -CredsId null `
 -ExtraInfo null
```

- Convert the resource to JSON
```powershell
$TargetConnectionInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

