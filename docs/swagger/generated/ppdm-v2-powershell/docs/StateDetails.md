# StateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Detailed state information | [optional] 

## Examples

- Prepare the resource
```powershell
$StateDetails = Initialize-PpdmApiReferenceStateDetails  -Message null
```

- Convert the resource to JSON
```powershell
$StateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

