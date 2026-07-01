# MssqlAppServerAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AagGuid** | **String** |  | [optional] 
**AvailabilityGroup** | **String** |  | [optional] 
**ClusterName** | **String** |  | [optional] 
**FciGuid** | **String** |  | [optional] 
**LastTransactionTimestamp** | **System.DateTime** |  | [optional] 
**LocalAppServerName** | **String** |  | [optional] 
**NetworkName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MssqlAppServerAttribute = Initialize-PpdmApiReferenceMssqlAppServerAttribute  -AagGuid null `
 -AvailabilityGroup null `
 -ClusterName null `
 -FciGuid null `
 -LastTransactionTimestamp null `
 -LocalAppServerName null `
 -NetworkName null
```

- Convert the resource to JSON
```powershell
$MssqlAppServerAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

