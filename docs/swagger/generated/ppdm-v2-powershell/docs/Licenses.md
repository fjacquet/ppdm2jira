# Licenses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**License[]**](License.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Licenses = Initialize-PpdmApiReferenceLicenses  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Licenses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

