# EntityMessageResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityMessageResource = Initialize-PpdmApiReferenceEntityMessageResource  -Id null `
 -Name null `
 -Type null `
 -Url null
```

- Convert the resource to JSON
```powershell
$EntityMessageResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

