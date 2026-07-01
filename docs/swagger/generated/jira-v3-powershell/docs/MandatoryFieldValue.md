# MandatoryFieldValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Retain** | **Boolean** | If &#x60;true&#x60;, will try to retain original non-null issue field values on move. | [optional] [default to $true]
**Type** | **String** | Will treat as &#x60;MandatoryFieldValue&#x60; if type is &#x60;raw&#x60; or &#x60;empty&#x60; | [optional] [default to "raw"]
**Value** | **String[]** | Value for each field. Provide a &#x60;list of strings&#x60; for non-ADF fields. | 

## Examples

- Prepare the resource
```powershell
$MandatoryFieldValue = Initialize-JiraApiReferenceMandatoryFieldValue  -Retain null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$MandatoryFieldValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

