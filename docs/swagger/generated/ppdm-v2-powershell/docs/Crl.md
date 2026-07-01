# Crl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CrlEntryResponse[]**](CrlEntryResponse.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Crl = Initialize-PpdmApiReferenceCrl  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Crl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

