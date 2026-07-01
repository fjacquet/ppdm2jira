# CloudBucketVerifyResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CloudAccountId** | **String** |  | [optional] 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudBucketVerifyResponse = Initialize-PpdmApiReferenceCloudBucketVerifyResponse  -CloudAccountId null `
 -UnsupportedFeatures null
```

- Convert the resource to JSON
```powershell
$CloudBucketVerifyResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

