# Whitelists
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Whitelist[]**](Whitelist.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Whitelists = Initialize-PpdmApiReferenceWhitelists  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Whitelists | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

