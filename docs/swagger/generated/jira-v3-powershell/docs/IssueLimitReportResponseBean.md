# IssueLimitReportResponseBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssuesApproachingLimit** | [**System.Collections.Hashtable**](Map.md) | A list of ids of issues approaching the limit and their field count | [optional] 
**IssuesBreachingLimit** | [**System.Collections.Hashtable**](Map.md) | A list of ids of issues breaching the limit and their field count | [optional] 
**Limits** | **System.Collections.Hashtable** | The fields and their defined limits | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueLimitReportResponseBean = Initialize-JiraApiReferenceIssueLimitReportResponseBean  -IssuesApproachingLimit null `
 -IssuesBreachingLimit null `
 -Limits null
```

- Convert the resource to JSON
```powershell
$IssueLimitReportResponseBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

