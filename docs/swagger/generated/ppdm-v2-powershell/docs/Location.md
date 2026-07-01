# Location
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the location. | [optional] 
**Lat** | **String** | The latitude of the location. | [optional] 
**Lon** | **String** | The longitude of the location. | [optional] 
**Name** | **String** | The name of the location. | [optional] 

## Examples

- Prepare the resource
```powershell
$Location = Initialize-PpdmApiReferenceLocation  -Id null `
 -Lat null `
 -Lon null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Location | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

