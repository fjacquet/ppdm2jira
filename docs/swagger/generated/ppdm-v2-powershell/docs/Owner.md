# Owner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the owner. | [optional] 
**OwnerResource** | [**OwnerResource**](OwnerResource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Owner = Initialize-PpdmApiReferenceOwner  -Name null `
 -OwnerResource null
```

- Convert the resource to JSON
```powershell
$Owner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

