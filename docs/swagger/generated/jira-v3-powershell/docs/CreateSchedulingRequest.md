# CreateSchedulingRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dependencies** | **String** | The dependencies for the plan. This must be &quot;&quot;Sequential&quot;&quot; or &quot;&quot;Concurrent&quot;&quot;. | [optional] 
**EndDate** | [**CreateDateFieldRequest**](CreateDateFieldRequest.md) | The end date field for the plan. | [optional] 
**Estimation** | **String** | The estimation unit for the plan. This must be &quot;&quot;StoryPoints&quot;&quot;, &quot;&quot;Days&quot;&quot; or &quot;&quot;Hours&quot;&quot;. | 
**InferredDates** | **String** | The inferred dates for the plan. This must be &quot;&quot;None&quot;&quot;, &quot;&quot;SprintDates&quot;&quot; or &quot;&quot;ReleaseDates&quot;&quot;. | [optional] 
**StartDate** | [**CreateDateFieldRequest**](CreateDateFieldRequest.md) | The start date field for the plan. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSchedulingRequest = Initialize-JiraApiReferenceCreateSchedulingRequest  -Dependencies null `
 -EndDate null `
 -Estimation null `
 -InferredDates null `
 -StartDate null
```

- Convert the resource to JSON
```powershell
$CreateSchedulingRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

