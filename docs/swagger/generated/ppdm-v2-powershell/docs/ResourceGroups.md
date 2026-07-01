# ResourceGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ResourceGroup[]**](ResourceGroup.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceGroups = Initialize-PpdmApiReferenceResourceGroups  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ResourceGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

