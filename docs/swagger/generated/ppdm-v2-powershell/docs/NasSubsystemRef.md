# NasSubsystemRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalIds** | **String[]** | The UUID of the Node/SVM which is registered to the Accelerator Node. This is a READ-ONLY field. | [optional] 
**Id** | **String** | The id of the referenced NAS subsystem. | [optional] 
**Name** | **String** | The name of the referenced NAS subsystem. This is a READ-ONLY field. | [optional] 

## Examples

- Prepare the resource
```powershell
$NasSubsystemRef = Initialize-PpdmApiReferenceNasSubsystemRef  -ExternalIds null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$NasSubsystemRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

