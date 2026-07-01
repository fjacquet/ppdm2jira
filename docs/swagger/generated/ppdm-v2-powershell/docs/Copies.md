# Copies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**Copy[]**](Copy.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Copies = Initialize-PpdmApiReferenceCopies  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$Copies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

