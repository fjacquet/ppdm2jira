# NetworkSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkKey** | **Int32** |  | [optional] 
**NetworkLabel** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 
**ReconnectNic** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkSettings = Initialize-PpdmApiReferenceNetworkSettings  -NetworkKey null `
 -NetworkLabel null `
 -NetworkMoref null `
 -ReconnectNic null
```

- Convert the resource to JSON
```powershell
$NetworkSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

