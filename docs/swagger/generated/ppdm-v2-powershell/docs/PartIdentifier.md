# PartIdentifier
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PartIdType** | **String** |  | [optional] 
**PartValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PartIdentifier = Initialize-PpdmApiReferencePartIdentifier  -PartIdType null `
 -PartValue null
```

- Convert the resource to JSON
```powershell
$PartIdentifier | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

