# JiraApiReference.JiraApiReference\Api.IssueBulkOperationsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AvailableTransitions**](IssueBulkOperationsApi.md#Get-AvailableTransitions) | **GET** /rest/api/3/bulk/issues/transition | Get available transitions
[**Get-BulkEditableFields**](IssueBulkOperationsApi.md#Get-BulkEditableFields) | **GET** /rest/api/3/bulk/issues/fields | Get bulk editable fields
[**Get-BulkOperationProgress**](IssueBulkOperationsApi.md#Get-BulkOperationProgress) | **GET** /rest/api/3/bulk/queue/{taskId} | Get bulk issue operation progress
[**Submit-BulkDelete**](IssueBulkOperationsApi.md#Submit-BulkDelete) | **POST** /rest/api/3/bulk/issues/delete | Bulk delete issues
[**Submit-BulkEdit**](IssueBulkOperationsApi.md#Submit-BulkEdit) | **POST** /rest/api/3/bulk/issues/fields | Bulk edit issues
[**Submit-BulkMove**](IssueBulkOperationsApi.md#Submit-BulkMove) | **POST** /rest/api/3/bulk/issues/move | Bulk move issues
[**Submit-BulkTransition**](IssueBulkOperationsApi.md#Submit-BulkTransition) | **POST** /rest/api/3/bulk/issues/transition | Bulk transition issue statuses
[**Submit-BulkUnwatch**](IssueBulkOperationsApi.md#Submit-BulkUnwatch) | **POST** /rest/api/3/bulk/issues/unwatch | Bulk unwatch issues
[**Submit-BulkWatch**](IssueBulkOperationsApi.md#Submit-BulkWatch) | **POST** /rest/api/3/bulk/issues/watch | Bulk watch issues


<a id="Get-AvailableTransitions"></a>
# **Get-AvailableTransitions**
> BulkTransitionGetAvailableTransitions Get-AvailableTransitions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdsOrKeys] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndingBefore] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartingAfter] <String><br>

Get available transitions

Use this API to retrieve a list of transitions available for the specified issues that can be used or bulk transition operations. You can submit either single or multiple issues in the query to obtain the available transitions.  The response will provide the available transitions for issues, organized by their respective workflows. **Only the transitions that are common among the issues within that workflow and do not involve any additional field updates will be included.** For bulk transitions that require additional field updates, please utilise the Jira Cloud UI.  You can request available transitions for up to 1,000 issues in a single operation. This API uses pagination to return responses, delivering 50 workflows at a time.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Transition [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Transition-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdsOrKeys = "MyIssueIdsOrKeys" # String | Comma (,) separated Ids or keys of the issues to get transitions available for them.
$EndingBefore = "MyEndingBefore" # String | (Optional)The end cursor for use in pagination. (optional)
$StartingAfter = "MyStartingAfter" # String | (Optional)The start cursor for use in pagination. (optional)

# Get available transitions
try {
    $Result = Get-AvailableTransitions -IssueIdsOrKeys $IssueIdsOrKeys -EndingBefore $EndingBefore -StartingAfter $StartingAfter
} catch {
    Write-Host ("Exception occurred when calling Get-AvailableTransitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdsOrKeys** | **String**| Comma (,) separated Ids or keys of the issues to get transitions available for them. | 
 **EndingBefore** | **String**| (Optional)The end cursor for use in pagination. | [optional] 
 **StartingAfter** | **String**| (Optional)The start cursor for use in pagination. | [optional] 

### Return type

[**BulkTransitionGetAvailableTransitions**](BulkTransitionGetAvailableTransitions.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BulkEditableFields"></a>
# **Get-BulkEditableFields**
> BulkEditGetFields Get-BulkEditableFields<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdsOrKeys] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchText] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndingBefore] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartingAfter] <String><br>

Get bulk editable fields

Use this API to get a list of fields visible to the user to perform bulk edit operations. You can pass single or multiple issues in the query to get eligible editable fields. This API uses pagination to return responses, delivering 50 fields at a time.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  Depending on the field, any field-specific permissions required to edit it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdsOrKeys = "MyIssueIdsOrKeys" # String | The IDs or keys of the issues to get editable fields from.
$SearchText = "MySearchText" # String | (Optional)The text to search for in the editable fields. (optional)
$EndingBefore = "MyEndingBefore" # String | (Optional)The end cursor for use in pagination. (optional)
$StartingAfter = "MyStartingAfter" # String | (Optional)The start cursor for use in pagination. (optional)

# Get bulk editable fields
try {
    $Result = Get-BulkEditableFields -IssueIdsOrKeys $IssueIdsOrKeys -SearchText $SearchText -EndingBefore $EndingBefore -StartingAfter $StartingAfter
} catch {
    Write-Host ("Exception occurred when calling Get-BulkEditableFields: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdsOrKeys** | **String**| The IDs or keys of the issues to get editable fields from. | 
 **SearchText** | **String**| (Optional)The text to search for in the editable fields. | [optional] 
 **EndingBefore** | **String**| (Optional)The end cursor for use in pagination. | [optional] 
 **StartingAfter** | **String**| (Optional)The start cursor for use in pagination. | [optional] 

### Return type

[**BulkEditGetFields**](BulkEditGetFields.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BulkOperationProgress"></a>
# **Get-BulkOperationProgress**
> BulkOperationProgress Get-BulkOperationProgress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskId] <String><br>

Get bulk issue operation progress

Use this to get the progress state for the specified bulk operation `taskId`.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  If the task is running, this resource will return:      {""taskId"":""10779"",""status"":""RUNNING"",""progressPercent"":65,""submittedBy"":{""accountId"":""5b10a2844c20165700ede21g""},""created"":1690180055963,""started"":1690180056206,""updated"":169018005829}  If the task has completed, then this resource will return:      {""processedAccessibleIssues"":[10001,10002],""created"":1709189449954,""progressPercent"":100,""started"":1709189450154,""status"":""COMPLETE"",""submittedBy"":{""accountId"":""5b10a2844c20165700ede21g""},""invalidOrInaccessibleIssueCount"":0,""taskId"":""10000"",""totalIssueCount"":2,""updated"":1709189450354}  **Note:** You can view task progress for up to 14 days from creation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TaskId = "MyTaskId" # String | The ID of the task.

# Get bulk issue operation progress
try {
    $Result = Get-BulkOperationProgress -TaskId $TaskId
} catch {
    Write-Host ("Exception occurred when calling Get-BulkOperationProgress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TaskId** | **String**| The ID of the task. | 

### Return type

[**BulkOperationProgress**](BulkOperationProgress.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkDelete"></a>
# **Submit-BulkDelete**
> SubmittedBulkOperation Submit-BulkDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkDeletePayload] <PSCustomObject><br>

Bulk delete issues

Use this API to submit a bulk delete request. You can delete up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Delete [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Delete-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueBulkDeletePayload = Initialize-IssueBulkDeletePayload -SelectedIssueIdsOrKeys "MySelectedIssueIdsOrKeys" -SendBulkNotification $false # IssueBulkDeletePayload | The request body containing the issues to be deleted.

# Bulk delete issues
try {
    $Result = Submit-BulkDelete -IssueBulkDeletePayload $IssueBulkDeletePayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkDeletePayload** | [**IssueBulkDeletePayload**](IssueBulkDeletePayload.md)| The request body containing the issues to be deleted. | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkEdit"></a>
# **Submit-BulkEdit**
> SubmittedBulkOperation Submit-BulkEdit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkEditPayload] <PSCustomObject><br>

Bulk edit issues

Use this API to submit a bulk edit request and simultaneously edit multiple issues. There are limits applied to the number of issues and fields that can be edited. A single request can accommodate a maximum of 1000 issues (including subtasks) and 200 fields.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  Edit [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$JiraSelectedOptionField = Initialize-JiraSelectedOptionField -OptionId 0
$JiraCascadingSelectField = Initialize-JiraCascadingSelectField -ChildOptionValue $JiraSelectedOptionField -FieldId "MyFieldId" -ParentOptionValue $JiraSelectedOptionField

$JiraNumberField = Initialize-JiraNumberField -FieldId "MyFieldId" -Value 0

$JiraColorInput = Initialize-JiraColorInput -Name "MyName"
$JiraColorField = Initialize-JiraColorField -Color $JiraColorInput -FieldId "MyFieldId"

$JiraDateInput = Initialize-JiraDateInput -FormattedDate "MyFormattedDate"
$JiraDateField = Initialize-JiraDateField -Date $JiraDateInput -FieldId "MyFieldId"

$JiraDateTimeInput = Initialize-JiraDateTimeInput -FormattedDateTime "MyFormattedDateTime"
$JiraDateTimeField = Initialize-JiraDateTimeField -DateTime $JiraDateTimeInput -FieldId "MyFieldId"

$JiraIssueTypeField = Initialize-JiraIssueTypeField -IssueTypeId "MyIssueTypeId"

$JiraLabelPropertiesInputJackson1 = Initialize-JiraLabelPropertiesInputJackson1 -Color "GREY_LIGHTEST" -Name "MyName"
$JiraLabelsInput = Initialize-JiraLabelsInput -Name "MyName"
$JiraLabelsField = Initialize-JiraLabelsField -BulkEditMultiSelectFieldOption "ADD" -FieldId "MyFieldId" -LabelProperties $JiraLabelPropertiesInputJackson1 -Labels $JiraLabelsInput

$JiraGroupInput = Initialize-JiraGroupInput -GroupName "MyGroupName"
$JiraMultipleGroupPickerField = Initialize-JiraMultipleGroupPickerField -FieldId "MyFieldId" -Groups $JiraGroupInput

$JiraUserField = Initialize-JiraUserField -AccountId "MyAccountId"
$JiraMultipleSelectUserPickerField = Initialize-JiraMultipleSelectUserPickerField -FieldId "MyFieldId" -Users $JiraUserField

$JiraMultipleSelectField = Initialize-JiraMultipleSelectField -FieldId "MyFieldId" -Options $JiraSelectedOptionField

$JiraVersionField = Initialize-JiraVersionField -VersionId "MyVersionId"
$JiraMultipleVersionPickerField = Initialize-JiraMultipleVersionPickerField -BulkEditMultiSelectFieldOption "ADD" -FieldId "MyFieldId" -Versions $JiraVersionField

$JiraComponentField = Initialize-JiraComponentField -ComponentId 0
$JiraMultiSelectComponentField = Initialize-JiraMultiSelectComponentField -BulkEditMultiSelectFieldOption "ADD" -Components $JiraComponentField -FieldId "MyFieldId"

$JiraDurationField = Initialize-JiraDurationField -OriginalEstimateField "MyOriginalEstimateField"
$JiraPriorityField = Initialize-JiraPriorityField -PriorityId "MyPriorityId"

$JiraRichTextInput = Initialize-JiraRichTextInput -AdfValue @{ key_example =  }
$JiraRichTextField = Initialize-JiraRichTextField -FieldId "MyFieldId" -RichText $JiraRichTextInput

$JiraSingleGroupPickerField = Initialize-JiraSingleGroupPickerField -FieldId "MyFieldId" -Group $JiraGroupInput

$JiraSingleLineTextField = Initialize-JiraSingleLineTextField -FieldId "MyFieldId" -Text "MyText"

$JiraSingleSelectUserPickerField = Initialize-JiraSingleSelectUserPickerField -FieldId "MyFieldId" -User $JiraUserField

$JiraSingleSelectField = Initialize-JiraSingleSelectField -FieldId "MyFieldId" -Option $JiraSelectedOptionField

$JiraSingleVersionPickerField = Initialize-JiraSingleVersionPickerField -FieldId "MyFieldId" -Version $JiraVersionField

$JiraStatusInput = Initialize-JiraStatusInput -StatusId "MyStatusId"
$JiraTimeTrackingField = Initialize-JiraTimeTrackingField -TimeRemaining "MyTimeRemaining"
$JiraUrlField = Initialize-JiraUrlField -FieldId "MyFieldId" -Url "MyUrl"
$JiraIssueFields = Initialize-JiraIssueFields -CascadingSelectFields $JiraCascadingSelectField -ClearableNumberFields $JiraNumberField -ColorFields $JiraColorField -DatePickerFields $JiraDateField -DateTimePickerFields $JiraDateTimeField -IssueType $JiraIssueTypeField -LabelsFields $JiraLabelsField -MultipleGroupPickerFields $JiraMultipleGroupPickerField -MultipleSelectClearableUserPickerFields $JiraMultipleSelectUserPickerField -MultipleSelectFields $JiraMultipleSelectField -MultipleVersionPickerFields $JiraMultipleVersionPickerField -MultiselectComponents $JiraMultiSelectComponentField -OriginalEstimateField $JiraDurationField -Priority $JiraPriorityField -RichTextFields $JiraRichTextField -SingleGroupPickerFields $JiraSingleGroupPickerField -SingleLineTextFields $JiraSingleLineTextField -SingleSelectClearableUserPickerFields $JiraSingleSelectUserPickerField -SingleSelectFields $JiraSingleSelectField -SingleVersionPickerFields $JiraSingleVersionPickerField -Status $JiraStatusInput -TimeTrackingField $JiraTimeTrackingField -UrlFields $JiraUrlField

$IssueBulkEditPayload = Initialize-IssueBulkEditPayload -EditedFieldsInput $JiraIssueFields -SelectedActions "MySelectedActions" -SelectedIssueIdsOrKeys "MySelectedIssueIdsOrKeys" -SendBulkNotification $false # IssueBulkEditPayload | The request body containing the issues to be edited and the new field values.

# Bulk edit issues
try {
    $Result = Submit-BulkEdit -IssueBulkEditPayload $IssueBulkEditPayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkEdit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkEditPayload** | [**IssueBulkEditPayload**](IssueBulkEditPayload.md)| The request body containing the issues to be edited and the new field values. | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkMove"></a>
# **Submit-BulkMove**
> SubmittedBulkOperation Submit-BulkMove<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkMovePayload] <PSCustomObject><br>

Bulk move issues

Use this API to submit a bulk issue move request. You can move multiple issues from multiple projects in a single request, but they must all be moved to a single project, issue type, and parent. You can't move more than 1000 issues (including subtasks) at once.  #### Scenarios: ####  This is an early version of the API and it doesn't have full feature parity with the Bulk Move UI experience.   *  Moving issue of type A to issue of type B in the same project or a different project: `SUPPORTED`  *  Moving multiple issues of type A in one or more projects to multiple issues of type B in one of the source projects or a different project: `SUPPORTED`  *  Moving issues of multiple issue types in one or more projects to issues of a single issue type in one of the source project or a different project: **`SUPPORTED`**       E.g. Moving issues of story and task issue types in project 1 and project 2 to issues of task issue type in project 3  *  Moving a standard parent issue of type A with its multiple subtask issue types in one project to standard issue of type B and multiple subtask issue types in the same project or a different project: `SUPPORTED`  *  Moving standard issues with their subtasks to a parent issue in the same project or a different project without losing their relation: `SUPPORTED`  *  Moving an epic issue with its child issues to a different project without losing their relation: `SUPPORTED`       This usecase is **supported using multiple requests**. Move the epic in one request and then move the children in a separate request with target parent set to the epic issue id              (Alternatively, move them individually and stitch the relationship back with the Bulk Edit API)  #### Limits applied to bulk issue moves: ####  When using the bulk move, keep in mind that there are limits on the number of issues and fields you can include.   *  You can move up to 1,000 issues in a single operation, including any subtasks.  *  The total combined number of fields across all issues must not exceed 1,500,000. For example, if each issue includes 15,000 fields, then the maximum number of issues that can be moved is 100.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Move [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in source projects.  *  Create [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in destination projects.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in destination projects, if moving subtasks only.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TargetClassification = Initialize-TargetClassification -Classifications @{ key_example = "MyInner" } -IssueType "MyIssueType" -ProjectKeyOrId "MyProjectKeyOrId"

$Fields = Initialize-Fields -Retain $false -Type "adf" -Value 
$TargetMandatoryFields = Initialize-TargetMandatoryFields -Fields @{ key_example = $Fields }

$TargetStatus = Initialize-TargetStatus -Statuses @{ key_example = "MyInner" }
$TargetToSourcesMapping = Initialize-TargetToSourcesMapping -InferClassificationDefaults $false -InferFieldDefaults $false -InferStatusDefaults $false -InferSubtaskTypeDefault $false -IssueIdsOrKeys "MyIssueIdsOrKeys" -TargetClassification $TargetClassification -TargetMandatoryFields $TargetMandatoryFields -TargetStatus $TargetStatus

$IssueBulkMovePayload = Initialize-IssueBulkMovePayload -SendBulkNotification $false -TargetToSourcesMapping @{ key_example = $TargetToSourcesMapping } # IssueBulkMovePayload | 

# Bulk move issues
try {
    $Result = Submit-BulkMove -IssueBulkMovePayload $IssueBulkMovePayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkMove: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkMovePayload** | [**IssueBulkMovePayload**](IssueBulkMovePayload.md)|  | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkTransition"></a>
# **Submit-BulkTransition**
> SubmittedBulkOperation Submit-BulkTransition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkTransitionPayload] <PSCustomObject><br>

Bulk transition issue statuses

Use this API to submit a bulk issue status transition request. You can transition multiple issues, alongside with their valid transition Ids. You can transition up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Transition [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Transition-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$BulkTransitionSubmitInput = Initialize-BulkTransitionSubmitInput -SelectedIssueIdsOrKeys "MySelectedIssueIdsOrKeys" -TransitionId "MyTransitionId"
$IssueBulkTransitionPayload = Initialize-IssueBulkTransitionPayload -BulkTransitionInputs $BulkTransitionSubmitInput -SendBulkNotification $false # IssueBulkTransitionPayload | The request body containing the issues to be transitioned.

# Bulk transition issue statuses
try {
    $Result = Submit-BulkTransition -IssueBulkTransitionPayload $IssueBulkTransitionPayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkTransition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkTransitionPayload** | [**IssueBulkTransitionPayload**](IssueBulkTransitionPayload.md)| The request body containing the issues to be transitioned. | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkUnwatch"></a>
# **Submit-BulkUnwatch**
> SubmittedBulkOperation Submit-BulkUnwatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkWatchOrUnwatchPayload] <PSCustomObject><br>

Bulk unwatch issues

Use this API to submit a bulk unwatch request. You can unwatch up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueBulkWatchOrUnwatchPayload = Initialize-IssueBulkWatchOrUnwatchPayload -SelectedIssueIdsOrKeys "MySelectedIssueIdsOrKeys" # IssueBulkWatchOrUnwatchPayload | The request body containing the issues to be unwatched.

# Bulk unwatch issues
try {
    $Result = Submit-BulkUnwatch -IssueBulkWatchOrUnwatchPayload $IssueBulkWatchOrUnwatchPayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkUnwatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkWatchOrUnwatchPayload** | [**IssueBulkWatchOrUnwatchPayload**](IssueBulkWatchOrUnwatchPayload.md)| The request body containing the issues to be unwatched. | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BulkWatch"></a>
# **Submit-BulkWatch**
> SubmittedBulkOperation Submit-BulkWatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueBulkWatchOrUnwatchPayload] <PSCustomObject><br>

Bulk watch issues

Use this API to submit a bulk watch request. You can watch up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueBulkWatchOrUnwatchPayload = Initialize-IssueBulkWatchOrUnwatchPayload -SelectedIssueIdsOrKeys "MySelectedIssueIdsOrKeys" # IssueBulkWatchOrUnwatchPayload | The request body containing the issues to be watched.

# Bulk watch issues
try {
    $Result = Submit-BulkWatch -IssueBulkWatchOrUnwatchPayload $IssueBulkWatchOrUnwatchPayload
} catch {
    Write-Host ("Exception occurred when calling Submit-BulkWatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueBulkWatchOrUnwatchPayload** | [**IssueBulkWatchOrUnwatchPayload**](IssueBulkWatchOrUnwatchPayload.md)| The request body containing the issues to be watched. | 

### Return type

[**SubmittedBulkOperation**](SubmittedBulkOperation.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

