# CloudBucketVerifyRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CloudPlatformType** | **String** |  | 
**CloudStorageProfileType** | **String** |  | 
**ConnectionDetails** | [**Connection[]**](Connection.md) |  | 
**StorageRegion** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudBucketVerifyRequest = Initialize-PpdmApiReferenceCloudBucketVerifyRequest  -CloudPlatformType null `
 -CloudStorageProfileType null `
 -ConnectionDetails null `
 -StorageRegion null
```

- Convert the resource to JSON
```powershell
$CloudBucketVerifyRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

