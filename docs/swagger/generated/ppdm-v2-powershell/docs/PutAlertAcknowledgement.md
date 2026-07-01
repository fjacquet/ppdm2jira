# PutAlertAcknowledgement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acknowledgement** | [**AlertAcknowledgement**](AlertAcknowledgement.md) |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PutAlertAcknowledgement = Initialize-PpdmApiReferencePutAlertAcknowledgement  -Acknowledgement null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PutAlertAcknowledgement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

