# SyslogsConfigurations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SyslogsConfiguration[]**](SyslogsConfiguration.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SyslogsConfigurations = Initialize-PpdmApiReferenceSyslogsConfigurations  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SyslogsConfigurations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

