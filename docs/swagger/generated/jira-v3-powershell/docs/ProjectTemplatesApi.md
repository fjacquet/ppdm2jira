# JiraApiReference.JiraApiReference\Api.ProjectTemplatesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ProjectWithCustomTemplate**](ProjectTemplatesApi.md#New-ProjectWithCustomTemplate) | **POST** /rest/api/3/project-template | Create custom project
[**Edit-Template**](ProjectTemplatesApi.md#Edit-Template) | **PUT** /rest/api/3/project-template/edit-template | Edit a custom project template
[**Invoke-LiveTemplate**](ProjectTemplatesApi.md#Invoke-LiveTemplate) | **GET** /rest/api/3/project-template/live-template | Gets a custom project template
[**Remove-Template**](ProjectTemplatesApi.md#Remove-Template) | **DELETE** /rest/api/3/project-template/remove-template | Deletes a custom project template
[**Save-Template**](ProjectTemplatesApi.md#Save-Template) | **POST** /rest/api/3/project-template/save-template | Save a custom project template


<a id="New-ProjectWithCustomTemplate"></a>
# **New-ProjectWithCustomTemplate**
> void New-ProjectWithCustomTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectCustomTemplateCreateRequestDTO] <PSCustomObject><br>

Create custom project

Creates a project based on a custom template provided in the request.  The request body should contain the project details and the capabilities that comprise the project:   *  `details` \- represents the project details settings  *  `template` \- represents a list of capabilities responsible for creating specific parts of a project  A capability is defined as a unit of configuration for the project you want to create.  This operation is:   *  [asynchronous](#async). Follow the `Location` link in the response header to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  ***Note: This API is only supported for Jira Enterprise edition.***  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CustomTemplatesProjectDetails = Initialize-CustomTemplatesProjectDetails -AccessLevel "open" -AdditionalProperties @{ key_example = "MyInner" } -AssigneeType "PROJECT_DEFAULT" -AvatarId 10200 -CategoryId 0 -Description "This is a project for Foo Bar" -EnableComponents $false -Key "PRJ" -Language "en" -LeadAccountId "1234567890" -Name "Project Foo Bar" -Url "https://www.example.com"

$BoardFeaturesPayload = Initialize-BoardFeaturesPayload -BoardFeatures @{ key_example = $BoardFeaturePayload = Initialize-BoardFeaturePayload -FeatureKey "ESTIMATION" -State $false }

$CardLayout = Initialize-CardLayout -ShowDaysInColumn $false
$CardLayoutField = Initialize-CardLayoutField -FieldId "MyFieldId" -Id 0 -Mode "PLAN" -Position 0

$ProjectCreateResourceIdentifier = Initialize-ProjectCreateResourceIdentifier -AnID $false -Areference $false -EntityId "MyEntityId" -EntityType "MyEntityType" -Id "MyId" -Type "id"
$BoardColumnPayload = Initialize-BoardColumnPayload -MaximumIssueConstraint 0 -MinimumIssueConstraint 0 -Name "TODO" -StatusIds $ProjectCreateResourceIdentifier

$QuickFilterPayload = Initialize-QuickFilterPayload -Description "MyDescription" -JqlQuery "MyJqlQuery" -Name "MyName"

$SwimlanePayload = Initialize-SwimlanePayload -Description "MyDescription" -JqlQuery "MyJqlQuery" -Name "MyName"
$SwimlanesPayload = Initialize-SwimlanesPayload -CustomSwimlanes $SwimlanePayload -DefaultCustomSwimlaneName "MyDefaultCustomSwimlaneName" -SwimlaneStrategy "none"

$NonWorkingDay = Initialize-NonWorkingDay -Id 0 -Iso8601Date "MyIso8601Date"
$WorkingDaysConfig = Initialize-WorkingDaysConfig -Friday $false -Id 0 -Monday $false -NonWorkingDays $NonWorkingDay -Saturday $false -Sunday $false -Thursday $false -TimezoneId "MyTimezoneId" -Tuesday $false -Wednesday $false

$BoardPayload = Initialize-BoardPayload -BoardFilterJQL "project = 'My Project'" -CardColorStrategy "ISSUE_TYPE" -CardLayout $CardLayout -CardLayouts $CardLayoutField -Columns $BoardColumnPayload -Features $BoardFeaturePayload -Name "MyName" -Pcri $ProjectCreateResourceIdentifier -QuickFilters $QuickFilterPayload -SupportsSprint $false -Swimlanes $SwimlanesPayload -WorkingDaysConfig $WorkingDaysConfig

$BoardsPayload = Initialize-BoardsPayload -Boards $BoardPayload

$CustomFieldPayload = Initialize-CustomFieldPayload -CfType "See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-post `type` for values" -Description "This is a custom field" -Name "My Custom Field" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier -Scope "GLOBAL" -SearcherKey "See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-post `searcherKey` for values"

$FieldLayoutSchemePayload = Initialize-FieldLayoutSchemePayload -DefaultFieldLayout $ProjectCreateResourceIdentifier -Description "This is a field layout scheme" -ExplicitMappings @{ key_example = $ProjectCreateResourceIdentifier } -Name "My Field Layout Scheme" -Pcri $ProjectCreateResourceIdentifier

$FieldLayoutConfiguration = Initialize-FieldLayoutConfiguration -Field $false -Pcri $ProjectCreateResourceIdentifier -Required $false

$FieldLayoutPayload = Initialize-FieldLayoutPayload -Configuration $FieldLayoutConfiguration -Description "This is a field layout" -Name "My Field Layout" -Pcri $ProjectCreateResourceIdentifier

$FieldAssociationItemPayload = Initialize-FieldAssociationItemPayload -Description "The description of the field association item" -Pcri $ProjectCreateResourceIdentifier -QualifierId $ProjectCreateResourceIdentifier -QualifierType $ProjectCreateResourceIdentifier -RendererType "jira-text-renderer" -Required $false

$FieldSchemePayload = Initialize-FieldSchemePayload -Description "This is a field scheme" -Items $FieldAssociationItemPayload -Name "My Field Scheme" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$IssueLayoutItemPayload = Initialize-IssueLayoutItemPayload -ItemKey $ProjectCreateResourceIdentifier -Properties @{ key_example =  } -SectionType "content" -Type "FIELD"

$IssueLayoutPayload = Initialize-IssueLayoutPayload -ContainerId $ProjectCreateResourceIdentifier -IssueLayoutType "ISSUE_VIEW" -Items $IssueLayoutItemPayload -Pcri $ProjectCreateResourceIdentifier

$IssueTypeScreenSchemePayload = Initialize-IssueTypeScreenSchemePayload -DefaultScreenScheme $ProjectCreateResourceIdentifier -Description "This is an issue type screen scheme" -ExplicitMappings @{ key_example = $ProjectCreateResourceIdentifier } -Name "My Issue Type Screen Scheme" -Pcri $ProjectCreateResourceIdentifier

$ScreenSchemePayload = Initialize-ScreenSchemePayload -DefaultScreen $ProjectCreateResourceIdentifier -Description "This is a screen scheme" -Name "My Screen Scheme" -Pcri $ProjectCreateResourceIdentifier -Screens @{ key_example = $ProjectCreateResourceIdentifier }

$TabPayload = Initialize-TabPayload -Fields $ProjectCreateResourceIdentifier -Name "MyName"

$ScreenPayload = Initialize-ScreenPayload -Description "This is a screen" -Name "My Screen" -Pcri $ProjectCreateResourceIdentifier -Tabs $TabPayload

$FieldCapabilityPayload = Initialize-FieldCapabilityPayload -CustomFieldDefinitions $CustomFieldPayload -FieldLayoutScheme $FieldLayoutSchemePayload -FieldLayouts $FieldLayoutPayload -FieldScheme $FieldSchemePayload -IssueLayouts $IssueLayoutPayload -IssueTypeScreenScheme $IssueTypeScreenSchemePayload -ScreenScheme $ScreenSchemePayload -Screens $ScreenPayload

$IssueTypeHierarchyPayload = Initialize-IssueTypeHierarchyPayload -HierarchyLevel 0 -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$IssueTypeSchemePayload = Initialize-IssueTypeSchemePayload -DefaultIssueTypeId $ProjectCreateResourceIdentifier -Description "MyDescription" -IssueTypeIds $ProjectCreateResourceIdentifier -Name "MyName" -Pcri $ProjectCreateResourceIdentifier

$IssueTypePayload = Initialize-IssueTypePayload -AvatarId 0 -Description "MyDescription" -HierarchyLevel 0 -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$IssueTypeProjectCreatePayload = Initialize-IssueTypeProjectCreatePayload -IssueTypeHierarchy $IssueTypeHierarchyPayload -IssueTypeScheme $IssueTypeSchemePayload -IssueTypes $IssueTypePayload

$NotificationSchemeEventIDPayload = Initialize-NotificationSchemeEventIDPayload -Id "1"
$NotificationSchemeNotificationDetailsPayload = Initialize-NotificationSchemeNotificationDetailsPayload -NotificationType "MyNotificationType" -Parameter "MyParameter"
$NotificationSchemeEventPayload = Initialize-NotificationSchemeEventPayload -VarEvent $NotificationSchemeEventIDPayload -Notifications $NotificationSchemeNotificationDetailsPayload

$NotificationSchemePayload = Initialize-NotificationSchemePayload -Description "MyDescription" -Name "MyName" -NotificationSchemeEvents $NotificationSchemeEventPayload -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$PermissionGrantDTO = Initialize-PermissionGrantDTO -ApplicationAccess "MyApplicationAccess" -GroupCustomFields $ProjectCreateResourceIdentifier -Groups $ProjectCreateResourceIdentifier -PermissionKeys "MyPermissionKeys" -ProjectRoles $ProjectCreateResourceIdentifier -SpecialGrants "MySpecialGrants" -UserCustomFields $ProjectCreateResourceIdentifier -Users $ProjectCreateResourceIdentifier

$PermissionPayloadDTO = Initialize-PermissionPayloadDTO -AddAddonRole $false -Description "MyDescription" -Grants $PermissionGrantDTO -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$ProjectPayload = Initialize-ProjectPayload -FieldLayoutSchemeId $ProjectCreateResourceIdentifier -IssueSecuritySchemeId $ProjectCreateResourceIdentifier -IssueTypeSchemeId $ProjectCreateResourceIdentifier -IssueTypeScreenSchemeId $ProjectCreateResourceIdentifier -NotificationSchemeId $ProjectCreateResourceIdentifier -Pcri $ProjectCreateResourceIdentifier -PermissionSchemeId $ProjectCreateResourceIdentifier -ProjectTypeKey "software" -WorkflowSchemeId $ProjectCreateResourceIdentifier

$RolePayload = Initialize-RolePayload -DefaultActors $ProjectCreateResourceIdentifier -Description "MyDescription" -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier -Type "HIDDEN"

$RolesCapabilityPayload = Initialize-RolesCapabilityPayload -RoleToProjectActors @{ key_example =  } -Roles $RolePayload

$ScopePayload = Initialize-ScopePayload -Type "GLOBAL"

$SecurityLevelMemberPayload = Initialize-SecurityLevelMemberPayload -Parameter "MyParameter" -Type "group"
$SecurityLevelPayload = Initialize-SecurityLevelPayload -Description "Newly created issue security level" -IsDefault $false -Name "New Security Level" -SecurityLevelMembers $SecurityLevelMemberPayload

$SecuritySchemePayload = Initialize-SecuritySchemePayload -Description "Newly created issue security scheme" -Name "New Security Scheme" -Pcri $ProjectCreateResourceIdentifier -SecurityLevels $SecurityLevelPayload

$StatusPayload = Initialize-StatusPayload -Description "MyDescription" -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier -StatusCategory "TODO"

$WorkflowSchemePayload = Initialize-WorkflowSchemePayload -DefaultWorkflow $ProjectCreateResourceIdentifier -Description "MyDescription" -ExplicitMappings @{ key_example = $ProjectCreateResourceIdentifier } -Name "MyName" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier

$WorkflowStatusLayoutPayload = Initialize-WorkflowStatusLayoutPayload -X 1 -Y 2

$WorkflowStatusPayload = Initialize-WorkflowStatusPayload -Layout $WorkflowStatusLayoutPayload -Pcri $ProjectCreateResourceIdentifier -Properties @{ key_example = "MyInner" }

$RulePayload = Initialize-RulePayload -Parameters @{ key_example = "MyInner" } -RuleKey "system:update-field"

$ConditionGroupPayload = Initialize-ConditionGroupPayload -ConditionGroup $ConditionGroupPayload -Conditions $RulePayload -Operation "ANY"

$FromLayoutPayload = Initialize-FromLayoutPayload -FromPort 0 -Status $ProjectCreateResourceIdentifier -ToPortOverride 0

$ToLayoutPayload = Initialize-ToLayoutPayload -Port 1 -Status $ProjectCreateResourceIdentifier

$TransitionPayload = Initialize-TransitionPayload -Actions $RulePayload -Conditions $ConditionGroupPayload -CustomIssueEventId "MyCustomIssueEventId" -Description "MyDescription" -VarFrom $FromLayoutPayload -Id 0 -Name "MyName" -Properties @{ key_example = "MyInner" } -To $ToLayoutPayload -TransitionScreen $RulePayload -Triggers $RulePayload -Type "global" -Validators $RulePayload

$WorkflowPayload = Initialize-WorkflowPayload -Description "a software workflow" -LoopedTransitionContainerLayout $WorkflowStatusLayoutPayload -Name "Software Simplified Workflow" -OnConflict "FAIL" -Pcri $ProjectCreateResourceIdentifier -StartPointLayout $WorkflowStatusLayoutPayload -Statuses $WorkflowStatusPayload -Transitions $TransitionPayload

$WorkflowCapabilityPayload = Initialize-WorkflowCapabilityPayload -Statuses $StatusPayload -WorkflowScheme $WorkflowSchemePayload -Workflows $WorkflowPayload

$CustomTemplateRequestDTO = Initialize-CustomTemplateRequestDTO -BoardFeatures $BoardFeaturesPayload -Boards $BoardsPayload -Field $FieldCapabilityPayload -IssueType $IssueTypeProjectCreatePayload -Notification $NotificationSchemePayload -PermissionScheme $PermissionPayloadDTO -Project $ProjectPayload -Role $RolesCapabilityPayload -Scope $ScopePayload -Security $SecuritySchemePayload -Workflow $WorkflowCapabilityPayload

$ProjectCustomTemplateCreateRequestDTO = Initialize-ProjectCustomTemplateCreateRequestDTO -Details $CustomTemplatesProjectDetails -Template $CustomTemplateRequestDTO # ProjectCustomTemplateCreateRequestDTO | The JSON payload containing the project details and capabilities

# Create custom project
try {
    $Result = New-ProjectWithCustomTemplate -ProjectCustomTemplateCreateRequestDTO $ProjectCustomTemplateCreateRequestDTO
} catch {
    Write-Host ("Exception occurred when calling New-ProjectWithCustomTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectCustomTemplateCreateRequestDTO** | [**ProjectCustomTemplateCreateRequestDTO**](ProjectCustomTemplateCreateRequestDTO.md)| The JSON payload containing the project details and capabilities | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Edit-Template"></a>
# **Edit-Template**
> AnyType Edit-Template<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EditTemplateRequest] <PSCustomObject><br>

Edit a custom project template

Edit custom template  This API endpoint allows you to edit an existing customised template.  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CustomTemplateOptions = Initialize-CustomTemplateOptions -EnableScreenDelegatedAdminSupport $false -EnableWorkflowDelegatedAdminSupport $false
$EditTemplateRequest = Initialize-EditTemplateRequest -TemplateDescription "MyTemplateDescription" -TemplateGenerationOptions $CustomTemplateOptions -TemplateKey "MyTemplateKey" -TemplateName "MyTemplateName" # EditTemplateRequest | The object containing the updated template details: name, description

# Edit a custom project template
try {
    $Result = Edit-Template -EditTemplateRequest $EditTemplateRequest
} catch {
    Write-Host ("Exception occurred when calling Edit-Template: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EditTemplateRequest** | [**EditTemplateRequest**](EditTemplateRequest.md)| The object containing the updated template details: name, description | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LiveTemplate"></a>
# **Invoke-LiveTemplate**
> ProjectTemplateModel Invoke-LiveTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateKey] <String><br>

Gets a custom project template

Get custom template  This API endpoint allows you to get a live custom project template details by either templateKey or projectId  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = "MyProjectId" # String | optional - The \{@link String\} containing the project key linked to the custom template to retrieve (optional)
$TemplateKey = "MyTemplateKey" # String | optional - The \{@link String\} containing the key of the custom template to retrieve (optional)

# Gets a custom project template
try {
    $Result = Invoke-LiveTemplate -ProjectId $ProjectId -TemplateKey $TemplateKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-LiveTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| optional - The \{@link String\} containing the project key linked to the custom template to retrieve | [optional] 
 **TemplateKey** | **String**| optional - The \{@link String\} containing the key of the custom template to retrieve | [optional] 

### Return type

[**ProjectTemplateModel**](ProjectTemplateModel.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Template"></a>
# **Remove-Template**
> AnyType Remove-Template<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateKey] <String><br>

Deletes a custom project template

Remove custom template  This API endpoint allows you to remove a specified customised template  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TemplateKey = "MyTemplateKey" # String | The \{@link String\} containing the key of the custom template to remove

# Deletes a custom project template
try {
    $Result = Remove-Template -TemplateKey $TemplateKey
} catch {
    Write-Host ("Exception occurred when calling Remove-Template: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateKey** | **String**| The \{@link String\} containing the key of the custom template to remove | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Save-Template"></a>
# **Save-Template**
> SaveTemplateResponse Save-Template<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SaveTemplateRequest] <PSCustomObject><br>

Save a custom project template

Save custom template  This API endpoint allows you to save a customised template  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CustomTemplateOptions = Initialize-CustomTemplateOptions -EnableScreenDelegatedAdminSupport $false -EnableWorkflowDelegatedAdminSupport $false
$SaveProjectTemplateRequest = Initialize-SaveProjectTemplateRequest -ProjectId 0 -TemplateGenerationOptions $CustomTemplateOptions -TemplateType "LIVE"

$SaveTemplateRequest = Initialize-SaveTemplateRequest -TemplateDescription "MyTemplateDescription" -TemplateFromProjectRequest $SaveProjectTemplateRequest -TemplateName "MyTemplateName" # SaveTemplateRequest | The object containing the template basic details: name, description

# Save a custom project template
try {
    $Result = Save-Template -SaveTemplateRequest $SaveTemplateRequest
} catch {
    Write-Host ("Exception occurred when calling Save-Template: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SaveTemplateRequest** | [**SaveTemplateRequest**](SaveTemplateRequest.md)| The object containing the template basic details: name, description | 

### Return type

[**SaveTemplateResponse**](SaveTemplateResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

