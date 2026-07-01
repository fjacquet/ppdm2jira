# OwnerResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the owner resource. | [optional] 
**ResourceType** | **String** | Type of the owner resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$OwnerResource = Initialize-PpdmApiReferenceOwnerResource  -Id null `
 -ResourceType null
```

- Convert the resource to JSON
```powershell
$OwnerResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

