# RmanProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RmanCredentialId** | **String** |  | [optional] 
**RmanTnsAdmin** | **String** |  | [optional] 
**RmanTnsName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RmanProperties = Initialize-PpdmApiReferenceRmanProperties  -RmanCredentialId null `
 -RmanTnsAdmin null `
 -RmanTnsName null
```

- Convert the resource to JSON
```powershell
$RmanProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

