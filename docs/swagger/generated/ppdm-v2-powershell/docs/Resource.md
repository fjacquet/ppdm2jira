# Resource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The reference ID. | [optional] 
**Name** | **String** | The reference name. | [optional] 
**Type** | **String** | The reference type. | [optional] 

## Examples

- Prepare the resource
```powershell
$Resource = Initialize-PpdmApiReferenceResource  -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Resource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

