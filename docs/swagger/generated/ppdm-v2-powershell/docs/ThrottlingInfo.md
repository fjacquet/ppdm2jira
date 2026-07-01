# ThrottlingInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Triggered** | **Boolean** | Indicates if throttling was performed for an activity in either the PowerProtect agent service or application. | [optional] 

## Examples

- Prepare the resource
```powershell
$ThrottlingInfo = Initialize-PpdmApiReferenceThrottlingInfo  -Triggered null
```

- Convert the resource to JSON
```powershell
$ThrottlingInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

