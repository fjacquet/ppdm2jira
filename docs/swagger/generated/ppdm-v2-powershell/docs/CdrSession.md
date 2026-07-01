# CdrSession
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetName** | **String** |  | [optional] 
**CopyTime** | **System.DateTime** |  | [optional] 
**DrType** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**InstanceId** | **String** |  | [optional] 
**Region** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**TargetPlatform** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrSession = Initialize-PpdmApiReferenceCdrSession  -AssetName null `
 -CopyTime null `
 -DrType null `
 -Id null `
 -InstanceId null `
 -Region null `
 -Status null `
 -TargetPlatform null
```

- Convert the resource to JSON
```powershell
$CdrSession | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

