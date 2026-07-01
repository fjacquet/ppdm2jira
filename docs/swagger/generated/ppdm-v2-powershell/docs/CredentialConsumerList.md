# CredentialConsumerList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Consumers** | [**CredentialConsumer[]**](CredentialConsumer.md) |  | [optional] 
**Label** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialConsumerList = Initialize-PpdmApiReferenceCredentialConsumerList  -Consumers null `
 -Label null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CredentialConsumerList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

