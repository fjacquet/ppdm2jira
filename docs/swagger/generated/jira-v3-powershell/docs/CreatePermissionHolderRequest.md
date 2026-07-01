# CreatePermissionHolderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The permission holder type. This must be &quot;&quot;Group&quot;&quot; or &quot;&quot;AccountId&quot;&quot;. | 
**Value** | **String** | The permission holder value. This must be a group name if the type is &quot;&quot;Group&quot;&quot; or an account ID if the type is &quot;&quot;AccountId&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$CreatePermissionHolderRequest = Initialize-JiraApiReferenceCreatePermissionHolderRequest  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CreatePermissionHolderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

