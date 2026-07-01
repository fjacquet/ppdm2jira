# BvSessionRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityUnits** | **Int32** |  | [optional] 
**ControlUnits** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BvSessionRef = Initialize-PpdmApiReferenceBvSessionRef  -CapacityUnits null `
 -ControlUnits null
```

- Convert the resource to JSON
```powershell
$BvSessionRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

