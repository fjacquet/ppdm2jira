# CredentialUsage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConsumerList** | [**CredentialConsumerList[]**](CredentialConsumerList.md) |  | [optional] 
**ConsumersCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialUsage = Initialize-PpdmApiReferenceCredentialUsage  -ConsumerList null `
 -ConsumersCount null
```

- Convert the resource to JSON
```powershell
$CredentialUsage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

