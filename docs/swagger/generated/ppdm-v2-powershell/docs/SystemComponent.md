# SystemComponent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComponentDisplayName** | **String** |  | [optional] 
**ComponentServiceName** | **String** |  | [optional] 
**ComponentType** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Logging** | [**Logging**](Logging.md) |  | [optional] 
**Monitored** | **Boolean** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemComponent = Initialize-PpdmApiReferenceSystemComponent  -ComponentDisplayName null `
 -ComponentServiceName null `
 -ComponentType null `
 -Id null `
 -Logging null `
 -Monitored null `
 -Status null
```

- Convert the resource to JSON
```powershell
$SystemComponent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

