# JiraApiReference.JiraApiReference\Api.PrioritySchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PriorityScheme**](PrioritySchemesApi.md#New-PriorityScheme) | **POST** /rest/api/3/priorityscheme | Create priority scheme
[**Invoke-DeletePriorityScheme**](PrioritySchemesApi.md#Invoke-DeletePriorityScheme) | **DELETE** /rest/api/3/priorityscheme/{schemeId} | Delete priority scheme
[**Get-AvailablePrioritiesByPriorityScheme**](PrioritySchemesApi.md#Get-AvailablePrioritiesByPriorityScheme) | **GET** /rest/api/3/priorityscheme/priorities/available | Get available priorities by priority scheme
[**Get-PrioritiesByPriorityScheme**](PrioritySchemesApi.md#Get-PrioritiesByPriorityScheme) | **GET** /rest/api/3/priorityscheme/{schemeId}/priorities | Get priorities by priority scheme
[**Get-PrioritySchemes**](PrioritySchemesApi.md#Get-PrioritySchemes) | **GET** /rest/api/3/priorityscheme | Get priority schemes
[**Get-ProjectsByPriorityScheme**](PrioritySchemesApi.md#Get-ProjectsByPriorityScheme) | **GET** /rest/api/3/priorityscheme/{schemeId}/projects | Get projects by priority scheme
[**Invoke-SuggestedPrioritiesForMappings**](PrioritySchemesApi.md#Invoke-SuggestedPrioritiesForMappings) | **POST** /rest/api/3/priorityscheme/mappings | Suggested priorities for mappings
[**Update-PriorityScheme**](PrioritySchemesApi.md#Update-PriorityScheme) | **PUT** /rest/api/3/priorityscheme/{schemeId} | Update priority scheme


<a id="New-PriorityScheme"></a>
# **New-PriorityScheme**
> PrioritySchemeId New-PriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePrioritySchemeDetails] <PSCustomObject><br>

Create priority scheme

Creates a new priority scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PriorityMapping = Initialize-PriorityMapping -VarIn @{ key_example = 0 } -Out @{ key_example = 0 }
$CreatePrioritySchemeDetails = Initialize-CreatePrioritySchemeDetails -DefaultPriorityId 0 -Description "MyDescription" -Mappings $PriorityMapping -Name "MyName" -PriorityIds 0 -ProjectIds 0 # CreatePrioritySchemeDetails | 

# Create priority scheme
try {
    $Result = New-PriorityScheme -CreatePrioritySchemeDetails $CreatePrioritySchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-PriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePrioritySchemeDetails** | [**CreatePrioritySchemeDetails**](CreatePrioritySchemeDetails.md)|  | 

### Return type

[**PrioritySchemeId**](PrioritySchemeId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeletePriorityScheme"></a>
# **Invoke-DeletePriorityScheme**
> AnyType Invoke-DeletePriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <Int64><br>

Delete priority scheme

Deletes a priority scheme.  This operation is only available for priority schemes without any associated projects. Any associated projects must be removed from the priority scheme before this operation can be performed.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = 789 # Int64 | The priority scheme ID.

# Delete priority scheme
try {
    $Result = Invoke-DeletePriorityScheme -SchemeId $SchemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **Int64**| The priority scheme ID. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AvailablePrioritiesByPriorityScheme"></a>
# **Get-AvailablePrioritiesByPriorityScheme**
> PageBeanPriorityWithSequence Get-AvailablePrioritiesByPriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Exclude] <String[]><br>

Get available priorities by priority scheme

Returns a [paginated](#pagination) list of priorities available for adding to a priority scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The priority scheme ID.
$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Query = "MyQuery" # String | The string to query priorities on by name. (optional) (default to "")
$Exclude = "MyExclude" # String[] | A list of priority IDs to exclude from the results. (optional)

# Get available priorities by priority scheme
try {
    $Result = Get-AvailablePrioritiesByPriorityScheme -SchemeId $SchemeId -StartAt $StartAt -MaxResults $MaxResults -Query $Query -Exclude $Exclude
} catch {
    Write-Host ("Exception occurred when calling Get-AvailablePrioritiesByPriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The priority scheme ID. | 
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Query** | **String**| The string to query priorities on by name. | [optional] [default to &quot;&quot;]
 **Exclude** | [**String[]**](String.md)| A list of priority IDs to exclude from the results. | [optional] 

### Return type

[**PageBeanPriorityWithSequence**](PageBeanPriorityWithSequence.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PrioritiesByPriorityScheme"></a>
# **Get-PrioritiesByPriorityScheme**
> PageBeanPriorityWithSequence Get-PrioritiesByPriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>

Get priorities by priority scheme

Returns a [paginated](#pagination) list of priorities by scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The priority scheme ID.
$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")

# Get priorities by priority scheme
try {
    $Result = Get-PrioritiesByPriorityScheme -SchemeId $SchemeId -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-PrioritiesByPriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The priority scheme ID. | 
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]

### Return type

[**PageBeanPriorityWithSequence**](PageBeanPriorityWithSequence.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PrioritySchemes"></a>
# **Get-PrioritySchemes**
> PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects Get-PrioritySchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PriorityId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyDefault] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get priority schemes

Returns a [paginated](#pagination) list of priority schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$PriorityId = 0 # Int64[] | A set of priority IDs to filter by. To include multiple IDs, provide an ampersand-separated list. For example, `priorityId=10000&priorityId=10001`. (optional)
$SchemeId = 0 # Int64[] | A set of priority scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, `schemeId=10000&schemeId=10001`. (optional)
$SchemeName = "MySchemeName" # String | The name of scheme to search for. (optional) (default to "")
$OnlyDefault = $true # Boolean | Whether only the default priority is returned. (optional) (default to $false)
$OrderBy = "name" # String | The ordering to return the priority schemes by. (optional) (default to "+name")
$Expand = "MyExpand" # String | A comma separated list of additional information to return. ""priorities"" will return priorities associated with the priority scheme. ""projects"" will return projects associated with the priority scheme. `expand=priorities,projects`. (optional)

# Get priority schemes
try {
    $Result = Get-PrioritySchemes -StartAt $StartAt -MaxResults $MaxResults -PriorityId $PriorityId -SchemeId $SchemeId -SchemeName $SchemeName -OnlyDefault $OnlyDefault -OrderBy $OrderBy -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-PrioritySchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **PriorityId** | [**Int64[]**](Int64.md)| A set of priority IDs to filter by. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;priorityId&#x3D;10000&amp;priorityId&#x3D;10001&#x60;. | [optional] 
 **SchemeId** | [**Int64[]**](Int64.md)| A set of priority scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] 
 **SchemeName** | **String**| The name of scheme to search for. | [optional] [default to &quot;&quot;]
 **OnlyDefault** | **Boolean**| Whether only the default priority is returned. | [optional] [default to $false]
 **OrderBy** | **String**| The ordering to return the priority schemes by. | [optional] [default to &quot;+name&quot;]
 **Expand** | **String**| A comma separated list of additional information to return. &quot;&quot;priorities&quot;&quot; will return priorities associated with the priority scheme. &quot;&quot;projects&quot;&quot; will return projects associated with the priority scheme. &#x60;expand&#x3D;priorities,projects&#x60;. | [optional] 

### Return type

[**PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects**](PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectsByPriorityScheme"></a>
# **Get-ProjectsByPriorityScheme**
> PageBeanProject Get-ProjectsByPriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Get projects by priority scheme

Returns a [paginated](#pagination) list of projects by scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The priority scheme ID.
$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$ProjectId = 0 # Int64[] | The project IDs to filter by. For example, `projectId=10000&projectId=10001`. (optional)
$Query = "MyQuery" # String | The string to query projects on by name. (optional) (default to "")

# Get projects by priority scheme
try {
    $Result = Get-ProjectsByPriorityScheme -SchemeId $SchemeId -StartAt $StartAt -MaxResults $MaxResults -ProjectId $ProjectId -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectsByPriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The priority scheme ID. | 
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **ProjectId** | [**Int64[]**](Int64.md)| The project IDs to filter by. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [optional] 
 **Query** | **String**| The string to query projects on by name. | [optional] [default to &quot;&quot;]

### Return type

[**PageBeanProject**](PageBeanProject.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SuggestedPrioritiesForMappings"></a>
# **Invoke-SuggestedPrioritiesForMappings**
> PageBeanPriorityWithSequence Invoke-SuggestedPrioritiesForMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SuggestedMappingsRequestBean] <PSCustomObject><br>

Suggested priorities for mappings

Returns a [paginated](#pagination) list of priorities that would require mapping, given a change in priorities or projects associated with a priority scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SuggestedMappingsForPrioritiesRequestBean = Initialize-SuggestedMappingsForPrioritiesRequestBean -Add 0 -Remove 0
$SuggestedMappingsForProjectsRequestBean = Initialize-SuggestedMappingsForProjectsRequestBean -Add 0
$SuggestedMappingsRequestBean = Initialize-SuggestedMappingsRequestBean -MaxResults 0 -Priorities $SuggestedMappingsForPrioritiesRequestBean -Projects $SuggestedMappingsForProjectsRequestBean -SchemeId 0 -StartAt 0 # SuggestedMappingsRequestBean | 

# Suggested priorities for mappings
try {
    $Result = Invoke-SuggestedPrioritiesForMappings -SuggestedMappingsRequestBean $SuggestedMappingsRequestBean
} catch {
    Write-Host ("Exception occurred when calling Invoke-SuggestedPrioritiesForMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SuggestedMappingsRequestBean** | [**SuggestedMappingsRequestBean**](SuggestedMappingsRequestBean.md)|  | 

### Return type

[**PageBeanPriorityWithSequence**](PageBeanPriorityWithSequence.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PriorityScheme"></a>
# **Update-PriorityScheme**
> UpdatePrioritySchemeResponseBean Update-PriorityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatePrioritySchemeRequestBean] <PSCustomObject><br>

Update priority scheme

Updates a priority scheme. This includes its details, the lists of priorities and projects in it  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = 789 # Int64 | The ID of the priority scheme.
$PriorityMapping = Initialize-PriorityMapping -VarIn @{ key_example = 0 } -Out @{ key_example = 0 }
$UpdatePrioritySchemeRequestBean = Initialize-UpdatePrioritySchemeRequestBean -DefaultPriorityId 0 -Description "MyDescription" -Mappings $PriorityMapping -Name "MyName" -Priorities  -Projects # UpdatePrioritySchemeRequestBean | 

# Update priority scheme
try {
    $Result = Update-PriorityScheme -SchemeId $SchemeId -UpdatePrioritySchemeRequestBean $UpdatePrioritySchemeRequestBean
} catch {
    Write-Host ("Exception occurred when calling Update-PriorityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **Int64**| The ID of the priority scheme. | 
 **UpdatePrioritySchemeRequestBean** | [**UpdatePrioritySchemeRequestBean**](UpdatePrioritySchemeRequestBean.md)|  | 

### Return type

[**UpdatePrioritySchemeResponseBean**](UpdatePrioritySchemeResponseBean.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

