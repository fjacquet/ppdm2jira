# SampleReportResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetType** | **String** | Asset Type. | [optional] 
**Successful** | **Decimal** | Count of successful jobs. | [optional] 

## Examples

- Prepare the resource
```powershell
$SampleReportResponse = Initialize-PpdmApiReferenceSampleReportResponse  -AssetType null `
 -Successful null
```

- Convert the resource to JSON
```powershell
$SampleReportResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

