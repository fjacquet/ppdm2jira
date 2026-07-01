# GetPermissionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Holder** | [**GetPermissionHolderResponse**](GetPermissionHolderResponse.md) | The permission holder. | 
**Type** | **String** | The permission type. This is &quot;&quot;View&quot;&quot; or &quot;&quot;Edit&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetPermissionResponse = Initialize-JiraApiReferenceGetPermissionResponse  -Holder null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GetPermissionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

