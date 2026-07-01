# Feature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiRules** | [**APIRule[]**](APIRule.md) |  | [optional] 
**BoundService** | **String** |  | [optional] 
**Dependencies** | **String[]** |  | [optional] 
**Id** | **String** |  | [optional] 
**JobRules** | [**JobRule[]**](JobRule.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Parents** | **String[]** |  | [optional] 
**Status** | **String** |  | [optional] 
**Togglers** | [**Toggler[]**](Toggler.md) |  | [optional] 
**Unavailable** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Feature = Initialize-PpdmApiReferenceFeature  -ApiRules null `
 -BoundService null `
 -Dependencies null `
 -Id null `
 -JobRules null `
 -Name null `
 -Parents null `
 -Status null `
 -Togglers null `
 -Unavailable null
```

- Convert the resource to JSON
```powershell
$Feature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

