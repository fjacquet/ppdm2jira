# Smtps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Smtp[]**](Smtp.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Smtps = Initialize-PpdmApiReferenceSmtps  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Smtps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

