# Timezone
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Offset** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Timezone = Initialize-PpdmApiReferenceTimezone  -Id null `
 -Name null `
 -Offset null
```

- Convert the resource to JSON
```powershell
$Timezone | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

