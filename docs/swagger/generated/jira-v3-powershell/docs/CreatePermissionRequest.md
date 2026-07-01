# CreatePermissionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Holder** | [**CreatePermissionHolderRequest**](CreatePermissionHolderRequest.md) | The permission holder. | 
**Type** | **String** | The permission type. This must be &quot;&quot;View&quot;&quot; or &quot;&quot;Edit&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$CreatePermissionRequest = Initialize-JiraApiReferenceCreatePermissionRequest  -Holder null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreatePermissionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

