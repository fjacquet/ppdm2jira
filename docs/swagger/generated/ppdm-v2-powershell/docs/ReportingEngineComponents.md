# ReportingEngineComponents
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportingDataCollector** | [**ReportingEgnineComponent**](ReportingEgnineComponent.md) | This component is applicable only for non Santorini deployment. | [optional] 
**ReportingDataProcessorService** | [**ReportingEgnineComponent**](ReportingEgnineComponent.md) | This component is applicable only for non Santorini deployment. | [optional] 
**ReportingGeneratorService** | [**ReportingEgnineComponent**](ReportingEgnineComponent.md) |  | [optional] 
**ReportingService** | [**ReportingEgnineComponent**](ReportingEgnineComponent.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportingEngineComponents = Initialize-PpdmApiReferenceReportingEngineComponents  -ReportingDataCollector null `
 -ReportingDataProcessorService null `
 -ReportingGeneratorService null `
 -ReportingService null
```

- Convert the resource to JSON
```powershell
$ReportingEngineComponents | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

