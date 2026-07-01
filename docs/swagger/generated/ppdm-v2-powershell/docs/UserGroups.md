# UserGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**UserGroup[]**](UserGroup.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserGroups = Initialize-PpdmApiReferenceUserGroups  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$UserGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

