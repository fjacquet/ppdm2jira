# CommonSettingProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxValue** | **String** |  | [optional] 
**MinValue** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonSettingProperty = Initialize-PpdmApiReferenceCommonSettingProperty  -MaxValue null `
 -MinValue null `
 -Name null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CommonSettingProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

