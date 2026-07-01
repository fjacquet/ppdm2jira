# RetierRetentionTime
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetierRetentionTime** | **System.DateTime** | The amount of time the recalled asset will stay on the data domain before being retiered back to cloud. | [optional] 

## Examples

- Prepare the resource
```powershell
$RetierRetentionTime = Initialize-PpdmApiReferenceRetierRetentionTime  -RetierRetentionTime null
```

- Convert the resource to JSON
```powershell
$RetierRetentionTime | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

