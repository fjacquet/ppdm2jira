# HardwareInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChassisId** | **String** |  | [optional] 
**ChassisPosition** | **String** |  | [optional] 
**PartIdentifiers** | [**PartIdentifier[]**](PartIdentifier.md) |  | [optional] 
**PartModel** | **String** |  | [optional] 
**PartName** | **String** |  | [optional] 
**PartRev** | **String** |  | [optional] 
**PartType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HardwareInfo = Initialize-PpdmApiReferenceHardwareInfo  -ChassisId null `
 -ChassisPosition null `
 -PartIdentifiers null `
 -PartModel null `
 -PartName null `
 -PartRev null `
 -PartType null
```

- Convert the resource to JSON
```powershell
$HardwareInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

