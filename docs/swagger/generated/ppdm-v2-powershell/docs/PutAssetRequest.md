# PutAssetRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** | The ID of the credential. | 
**Details** | [**PutAssetRequestDetails**](PutAssetRequestDetails.md) |  | [optional] 
**Id** | **String** | The ID of an asset. | 
**Type** | **String** | The type of an asset, such as VMWARE_VIRTUAL_MACHINE. | 

## Examples

- Prepare the resource
```powershell
$PutAssetRequest = Initialize-PpdmApiReferencePutAssetRequest  -CredentialId null `
 -Details null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PutAssetRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

