# DataDomainMTreeCapacity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **System.Collections.Hashtable** |  | [optional] 
**AvailableCapacityInBytes** | **Double** |  | [optional] [readonly] 
**HardCapacityQuotaLevel** | **Int64** |  | [optional] 
**SoftCapacityQuotaLevel** | **Int64** |  | [optional] 
**TotalCapacityInBytes** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DataDomainMTreeCapacity = Initialize-PpdmApiReferenceDataDomainMTreeCapacity  -Attributes null `
 -AvailableCapacityInBytes null `
 -HardCapacityQuotaLevel null `
 -SoftCapacityQuotaLevel null `
 -TotalCapacityInBytes null
```

- Convert the resource to JSON
```powershell
$DataDomainMTreeCapacity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

