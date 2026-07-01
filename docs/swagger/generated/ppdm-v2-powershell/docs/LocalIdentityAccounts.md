# LocalIdentityAccounts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**LocalIdentityAccount[]**](LocalIdentityAccount.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LocalIdentityAccounts = Initialize-PpdmApiReferenceLocalIdentityAccounts  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$LocalIdentityAccounts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

