# NameValuePairInteger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the value. | [optional] 
**Value** | **Int32** | Value of the name. Type of integer. | [optional] 

## Examples

- Prepare the resource
```powershell
$NameValuePairInteger = Initialize-PpdmApiReferenceNameValuePairInteger  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$NameValuePairInteger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

