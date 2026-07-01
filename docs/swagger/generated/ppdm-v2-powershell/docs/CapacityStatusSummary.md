# CapacityStatusSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FairCount** | **Int32** | Count for FAIR capacity status of the PowerProtect Data Domain systems. | [optional] 
**GoodCount** | **Int32** | Count for GOOD capacity status of the PowerProtect Data Domain systems. | [optional] 
**PoorCount** | **Int32** | Count for POOR capacity status of the PowerProtect Data Domain systems. | [optional] 
**TotalCount** | **Int32** | Total count of PowerProtect Data Domain systems with a valid capacity status. | [optional] 
**Type** | [**TierType**](TierType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CapacityStatusSummary = Initialize-PpdmApiReferenceCapacityStatusSummary  -FairCount null `
 -GoodCount null `
 -PoorCount null `
 -TotalCount null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CapacityStatusSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

