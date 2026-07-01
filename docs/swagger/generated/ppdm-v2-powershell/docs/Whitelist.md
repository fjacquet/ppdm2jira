# Whitelist
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedTime** | **System.DateTime** | Created timestamp (ISO 8601 format). | [optional] 
**ExpiresAt** | **System.DateTime** | Expiration timestamp (ISO 8601 format). | [optional] 
**Id** | **String** | Whitelist ID. | [optional] 
**Internal** | **Boolean** | The internal value of the whitelist entry. | [optional] 
**Ip** | **String** | Whitelist IP address. | [optional] 
**RoleId** | **String** | The role id of the whitelist entries. | [optional] 
**State** | **String** | Whitelist state. | [optional] 

## Examples

- Prepare the resource
```powershell
$Whitelist = Initialize-PpdmApiReferenceWhitelist  -CreatedTime null `
 -ExpiresAt null `
 -Id null `
 -Internal null `
 -Ip null `
 -RoleId null `
 -State null
```

- Convert the resource to JSON
```powershell
$Whitelist | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

