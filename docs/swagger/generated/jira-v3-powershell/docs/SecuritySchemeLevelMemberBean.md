# SecuritySchemeLevelMemberBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Parameter** | **String** | The value corresponding to the specified member type. | [optional] 
**Type** | **String** | The issue security level member type, e.g &#x60;reporter&#x60;, &#x60;group&#x60;, &#x60;user&#x60;, &#x60;projectrole&#x60;, &#x60;applicationRole&#x60;. | 

## Examples

- Prepare the resource
```powershell
$SecuritySchemeLevelMemberBean = Initialize-JiraApiReferenceSecuritySchemeLevelMemberBean  -Parameter null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SecuritySchemeLevelMemberBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

