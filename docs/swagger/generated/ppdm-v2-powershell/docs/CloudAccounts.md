# CloudAccounts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CloudAccount[]**](CloudAccount.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudAccounts = Initialize-PpdmApiReferenceCloudAccounts  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$CloudAccounts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

