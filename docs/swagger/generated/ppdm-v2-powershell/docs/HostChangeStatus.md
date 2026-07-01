# HostChangeStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | The target host status type. Currently only support DELETED. | [optional] 

## Examples

- Prepare the resource
```powershell
$HostChangeStatus = Initialize-PpdmApiReferenceHostChangeStatus  -Status null
```

- Convert the resource to JSON
```powershell
$HostChangeStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

