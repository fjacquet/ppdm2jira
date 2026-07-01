# Restrictions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of restriction. | [optional] 
**Value** | **String** | The value of the restriction is either set to &quot;&quot;true&quot;&quot; or &quot;&quot;false&quot;&quot;. | [optional] 

## Examples

- Prepare the resource
```powershell
$Restrictions = Initialize-PpdmApiReferenceRestrictions  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$Restrictions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

