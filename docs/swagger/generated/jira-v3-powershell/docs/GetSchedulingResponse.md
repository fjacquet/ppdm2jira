# GetSchedulingResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dependencies** | **String** | The dependencies for the plan. This is &quot;&quot;Sequential&quot;&quot; or &quot;&quot;Concurrent&quot;&quot;. | 
**EndDate** | [**GetDateFieldResponse**](GetDateFieldResponse.md) | The end date field for the plan. | 
**Estimation** | **String** | The estimation unit for the plan. This is &quot;&quot;StoryPoints&quot;&quot;, &quot;&quot;Days&quot;&quot; or &quot;&quot;Hours&quot;&quot;. | 
**InferredDates** | **String** | The inferred dates for the plan. This is &quot;&quot;None&quot;&quot;, &quot;&quot;SprintDates&quot;&quot; or &quot;&quot;ReleaseDates&quot;&quot;. | 
**StartDate** | [**GetDateFieldResponse**](GetDateFieldResponse.md) | The start date field for the plan. | 

## Examples

- Prepare the resource
```powershell
$GetSchedulingResponse = Initialize-JiraApiReferenceGetSchedulingResponse  -Dependencies null `
 -EndDate null `
 -Estimation null `
 -InferredDates null `
 -StartDate null
```

- Convert the resource to JSON
```powershell
$GetSchedulingResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

