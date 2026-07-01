# Certificates
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Certificate[]**](Certificate.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Certificates = Initialize-PpdmApiReferenceCertificates  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Certificates | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

