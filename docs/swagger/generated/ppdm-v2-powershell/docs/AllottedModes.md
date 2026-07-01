# AllottedModes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityUnits** | **Int32** |  | [optional] 
**ControlUnits** | **Int32** |  | [optional] 
**ReservedBy** | [**ReservedBy**](ReservedBy.md) |  | [optional] 
**TotalControlSessions** | **Int32** |  | [optional] 
**TotalTransportSessions** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AllottedModes = Initialize-PpdmApiReferenceAllottedModes  -CapacityUnits null `
 -ControlUnits null `
 -ReservedBy null `
 -TotalControlSessions null `
 -TotalTransportSessions null
```

- Convert the resource to JSON
```powershell
$AllottedModes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

