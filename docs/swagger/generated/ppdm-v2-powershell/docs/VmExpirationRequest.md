# VmExpirationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpirationTime** | **System.DateTime** | The date and time when PowerProtect Data Manager automatically shutdowns and delete a Virtual Machine (VM) Instant Access session. | [optional] 
**ExtendedDay** | **Int32** | A positive integer representing the number of days to extend the expiration of the Vm/Instant Access session. A REST API will specify the session id on which this applies. | [optional] 

## Examples

- Prepare the resource
```powershell
$VmExpirationRequest = Initialize-PpdmApiReferenceVmExpirationRequest  -ExpirationTime null `
 -ExtendedDay null
```

- Convert the resource to JSON
```powershell
$VmExpirationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

