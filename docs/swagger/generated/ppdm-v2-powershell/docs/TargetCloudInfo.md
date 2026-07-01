# TargetCloudInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DrType** | **String** |  | [optional] 
**NetworkId** | **String** |  | [optional] 
**SecurityGroupIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetCloudInfo = Initialize-PpdmApiReferenceTargetCloudInfo  -DrType null `
 -NetworkId null `
 -SecurityGroupIds null
```

- Convert the resource to JSON
```powershell
$TargetCloudInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

