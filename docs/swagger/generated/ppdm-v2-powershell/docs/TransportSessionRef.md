# TransportSessionRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityUnits** | **Int32** |  | [optional] 
**ControlUnits** | **Int32** |  | [optional] 
**Mode** | **String** |  | [optional] 
**UseSsl** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TransportSessionRef = Initialize-PpdmApiReferenceTransportSessionRef  -CapacityUnits null `
 -ControlUnits null `
 -Mode null `
 -UseSsl null
```

- Convert the resource to JSON
```powershell
$TransportSessionRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

