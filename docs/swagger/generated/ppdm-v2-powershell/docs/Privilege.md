# Privilege
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** | Category. | [optional] 
**Description** | **String** | Description. | [optional] 
**Name** | **String** | Name. | [optional] 

## Examples

- Prepare the resource
```powershell
$Privilege = Initialize-PpdmApiReferencePrivilege  -Category null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Privilege | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

