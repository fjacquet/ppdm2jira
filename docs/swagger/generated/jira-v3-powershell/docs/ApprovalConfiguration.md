# ApprovalConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **String** | Whether the approval configuration is active. | 
**ConditionType** | **String** | How the required approval count is calculated. It may be configured to require a specific number of approvals, or approval by a percentage of approvers. If the approvers source field is Approver groups, you can configure how many approvals per group are required for the request to be approved. The number will be the same across all groups. | 
**ConditionValue** | **String** | The number or percentage of approvals required for a request to be approved. If &#x60;conditionType&#x60; is &#x60;number&#x60;, the value must be 20 or less. If &#x60;conditionType&#x60; is &#x60;percent&#x60;, the value must be 100 or less. | 
**Exclude** | **String[]** | A list of roles that should be excluded as possible approvers. | [optional] 
**FieldId** | **String** | The custom field ID of the &quot;&quot;Approvers&quot;&quot; or &quot;&quot;Approver Groups&quot;&quot; field. | 
**PrePopulatedFieldId** | **String** | The custom field ID of the field used to pre-populate the Approver field. Only supports the &quot;&quot;Affected Services&quot;&quot; field. | [optional] 
**TransitionApproved** | **String** | The numeric ID of the transition to be executed if the request is approved. | 
**TransitionRejected** | **String** | The numeric ID of the transition to be executed if the request is declined. | 

## Examples

- Prepare the resource
```powershell
$ApprovalConfiguration = Initialize-JiraApiReferenceApprovalConfiguration  -Active null `
 -ConditionType null `
 -ConditionValue null `
 -Exclude null `
 -FieldId null `
 -PrePopulatedFieldId null `
 -TransitionApproved null `
 -TransitionRejected null
```

- Convert the resource to JSON
```powershell
$ApprovalConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

