# GetPermissionHolderResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The permission holder type. This is &quot;&quot;Group&quot;&quot; or &quot;&quot;AccountId&quot;&quot;. | 
**Value** | **String** | The permission holder value. This is a group name if the type is &quot;&quot;Group&quot;&quot; or an account ID if the type is &quot;&quot;AccountId&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetPermissionHolderResponse = Initialize-JiraApiReferenceGetPermissionHolderResponse  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$GetPermissionHolderResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

