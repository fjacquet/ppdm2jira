# RetentionObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Interval** | **Int32** |  | [optional] 
**Unit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RetentionObject = Initialize-PpdmApiReferenceRetentionObject  -Interval null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$RetentionObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

