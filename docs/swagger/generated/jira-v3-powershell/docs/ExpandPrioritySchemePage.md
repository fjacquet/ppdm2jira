# ExpandPrioritySchemePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxResults** | **Int32** |  | [optional] 
**StartAt** | **Int64** |  | [optional] 
**Total** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExpandPrioritySchemePage = Initialize-JiraApiReferenceExpandPrioritySchemePage  -MaxResults null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$ExpandPrioritySchemePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

