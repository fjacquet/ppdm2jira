# CdrSessions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CdrSession[]**](CdrSession.md) |  | [optional] 
**PageInfo** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrSessions = Initialize-PpdmApiReferenceCdrSessions  -Content null `
 -PageInfo null
```

- Convert the resource to JSON
```powershell
$CdrSessions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

