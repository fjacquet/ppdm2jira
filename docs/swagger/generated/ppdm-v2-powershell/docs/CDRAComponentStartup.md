# CDRAComponentStartup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlreadyManaged** | **Boolean** |  | [optional] 
**ExistingJobID** | **String** |  | [optional] 
**Operation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CDRAComponentStartup = Initialize-PpdmApiReferenceCDRAComponentStartup  -AlreadyManaged null `
 -ExistingJobID null `
 -Operation null
```

- Convert the resource to JSON
```powershell
$CDRAComponentStartup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

