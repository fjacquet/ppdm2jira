# NameValuePairString
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the value. | [optional] 
**Value** | **String** | Value of the name. Type of string. | [optional] 

## Examples

- Prepare the resource
```powershell
$NameValuePairString = Initialize-PpdmApiReferenceNameValuePairString  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$NameValuePairString | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

