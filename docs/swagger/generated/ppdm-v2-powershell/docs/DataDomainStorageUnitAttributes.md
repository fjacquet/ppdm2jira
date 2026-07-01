# DataDomainStorageUnitAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetCloudUnitName** | **String** |  | [optional] 
**TopLevelPath** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainStorageUnitAttributes = Initialize-PpdmApiReferenceDataDomainStorageUnitAttributes  -TargetCloudUnitName null `
 -TopLevelPath null
```

- Convert the resource to JSON
```powershell
$DataDomainStorageUnitAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

