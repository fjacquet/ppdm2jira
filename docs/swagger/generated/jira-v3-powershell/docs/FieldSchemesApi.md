# JiraApiReference.JiraApiReference\Api.FieldSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Join-ProjectsToFieldAssociationSchemes**](FieldSchemesApi.md#Join-ProjectsToFieldAssociationSchemes) | **PUT** /rest/api/3/config/fieldschemes/projects | Associate projects to field schemes
[**Copy-FieldAssociationScheme**](FieldSchemesApi.md#Copy-FieldAssociationScheme) | **POST** /rest/api/3/config/fieldschemes/{id}/clone | Clone field scheme
[**New-FieldAssociationScheme**](FieldSchemesApi.md#New-FieldAssociationScheme) | **POST** /rest/api/3/config/fieldschemes | Create field scheme
[**Invoke-DeleteFieldAssociationScheme**](FieldSchemesApi.md#Invoke-DeleteFieldAssociationScheme) | **DELETE** /rest/api/3/config/fieldschemes/{id} | Delete a field scheme
[**Get-FieldAssociationSchemeById**](FieldSchemesApi.md#Get-FieldAssociationSchemeById) | **GET** /rest/api/3/config/fieldschemes/{id} | Get field scheme
[**Get-FieldAssociationSchemeItemParameters**](FieldSchemesApi.md#Get-FieldAssociationSchemeItemParameters) | **GET** /rest/api/3/config/fieldschemes/{id}/fields/{fieldId}/parameters | Get field parameters
[**Get-FieldAssociationSchemes**](FieldSchemesApi.md#Get-FieldAssociationSchemes) | **GET** /rest/api/3/config/fieldschemes | Get field schemes
[**Get-ProjectsWithFieldSchemes**](FieldSchemesApi.md#Get-ProjectsWithFieldSchemes) | **GET** /rest/api/3/config/fieldschemes/projects | Get projects with field schemes
[**Remove-FieldAssociationSchemeItemParameters**](FieldSchemesApi.md#Remove-FieldAssociationSchemeItemParameters) | **DELETE** /rest/api/3/config/fieldschemes/fields/parameters | Remove field parameters
[**Remove-FieldsAssociatedWithSchemes**](FieldSchemesApi.md#Remove-FieldsAssociatedWithSchemes) | **DELETE** /rest/api/3/config/fieldschemes/fields | Remove fields associated with field schemes
[**Search-FieldAssociationSchemeFields**](FieldSchemesApi.md#Search-FieldAssociationSchemeFields) | **GET** /rest/api/3/config/fieldschemes/{id}/fields | Search field scheme fields
[**Search-FieldAssociationSchemeProjects**](FieldSchemesApi.md#Search-FieldAssociationSchemeProjects) | **GET** /rest/api/3/config/fieldschemes/{id}/projects | Search field scheme projects
[**Update-FieldAssociationScheme**](FieldSchemesApi.md#Update-FieldAssociationScheme) | **PUT** /rest/api/3/config/fieldschemes/{id} | Update field scheme
[**Update-FieldAssociationSchemeItemParameters**](FieldSchemesApi.md#Update-FieldAssociationSchemeItemParameters) | **PUT** /rest/api/3/config/fieldschemes/fields/parameters | Update field parameters
[**Update-FieldsAssociatedWithSchemes**](FieldSchemesApi.md#Update-FieldsAssociatedWithSchemes) | **PUT** /rest/api/3/config/fieldschemes/fields | Update fields associated with field schemes


<a id="Join-ProjectsToFieldAssociationSchemes"></a>
# **Join-ProjectsToFieldAssociationSchemes**
> FieldSchemeToProjectsResponse Join-ProjectsToFieldAssociationSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Associate projects to field schemes

Associate projects to field association schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequestBody = $FieldSchemeToProjectsRequest = Initialize-FieldSchemeToProjectsRequest -ProjectIds 0
$RequestBody = @{ key_example = $FieldSchemeToProjectsRequest } # System.Collections.Hashtable | 

# Associate projects to field schemes
try {
    $Result = Join-ProjectsToFieldAssociationSchemes -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Join-ProjectsToFieldAssociationSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](FieldSchemeToProjectsRequest.md)|  | 

### Return type

[**FieldSchemeToProjectsResponse**](FieldSchemeToProjectsResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Copy-FieldAssociationScheme"></a>
# **Copy-FieldAssociationScheme**
> CreateFieldAssociationSchemeResponse Copy-FieldAssociationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateFieldAssociationSchemeRequest] <PSCustomObject><br>

Clone field scheme

Endpoint for cloning an existing field association scheme into a new one.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the source field association scheme to clone from
$CreateFieldAssociationSchemeRequest = Initialize-CreateFieldAssociationSchemeRequest -Description "MyDescription" -Name "MyName" # CreateFieldAssociationSchemeRequest | The request containing the name and description for the new scheme

# Clone field scheme
try {
    $Result = Copy-FieldAssociationScheme -Id $Id -CreateFieldAssociationSchemeRequest $CreateFieldAssociationSchemeRequest
} catch {
    Write-Host ("Exception occurred when calling Copy-FieldAssociationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the source field association scheme to clone from | 
 **CreateFieldAssociationSchemeRequest** | [**CreateFieldAssociationSchemeRequest**](CreateFieldAssociationSchemeRequest.md)| The request containing the name and description for the new scheme | 

### Return type

[**CreateFieldAssociationSchemeResponse**](CreateFieldAssociationSchemeResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-FieldAssociationScheme"></a>
# **New-FieldAssociationScheme**
> CreateFieldAssociationSchemeResponse New-FieldAssociationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateFieldAssociationSchemeRequest] <PSCustomObject><br>

Create field scheme

Endpoint for creating a new field association scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CreateFieldAssociationSchemeRequest = Initialize-CreateFieldAssociationSchemeRequest -Description "MyDescription" -Name "MyName" # CreateFieldAssociationSchemeRequest | The request containing the name and description of the field association scheme

# Create field scheme
try {
    $Result = New-FieldAssociationScheme -CreateFieldAssociationSchemeRequest $CreateFieldAssociationSchemeRequest
} catch {
    Write-Host ("Exception occurred when calling New-FieldAssociationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateFieldAssociationSchemeRequest** | [**CreateFieldAssociationSchemeRequest**](CreateFieldAssociationSchemeRequest.md)| The request containing the name and description of the field association scheme | 

### Return type

[**CreateFieldAssociationSchemeResponse**](CreateFieldAssociationSchemeResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteFieldAssociationScheme"></a>
# **Invoke-DeleteFieldAssociationScheme**
> DeleteFieldAssociationSchemeResponse Invoke-DeleteFieldAssociationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete a field scheme

Delete a specified field association scheme  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field association scheme to delete.

# Delete a field scheme
try {
    $Result = Invoke-DeleteFieldAssociationScheme -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFieldAssociationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field association scheme to delete. | 

### Return type

[**DeleteFieldAssociationSchemeResponse**](DeleteFieldAssociationSchemeResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldAssociationSchemeById"></a>
# **Get-FieldAssociationSchemeById**
> GetFieldAssociationSchemeByIdResponse Get-FieldAssociationSchemeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get field scheme

Endpoint for fetching a field association scheme by its ID  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The scheme id to fetch

# Get field scheme
try {
    $Result = Get-FieldAssociationSchemeById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-FieldAssociationSchemeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The scheme id to fetch | 

### Return type

[**GetFieldAssociationSchemeByIdResponse**](GetFieldAssociationSchemeByIdResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldAssociationSchemeItemParameters"></a>
# **Get-FieldAssociationSchemeItemParameters**
> GetFieldAssociationParametersResponse Get-FieldAssociationSchemeItemParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldId] <String><br>

Get field parameters

Retrieve field association parameters on a field association scheme  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | the ID of the field association scheme to retrieve parameters for
$FieldId = "MyFieldId" # String | the ID of the field

# Get field parameters
try {
    $Result = Get-FieldAssociationSchemeItemParameters -Id $Id -FieldId $FieldId
} catch {
    Write-Host ("Exception occurred when calling Get-FieldAssociationSchemeItemParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| the ID of the field association scheme to retrieve parameters for | 
 **FieldId** | **String**| the ID of the field | 

### Return type

[**GetFieldAssociationParametersResponse**](GetFieldAssociationParametersResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldAssociationSchemes"></a>
# **Get-FieldAssociationSchemes**
> PageBean2GetFieldAssociationSchemeResponse Get-FieldAssociationSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get field schemes

REST endpoint for retrieving a paginated list of field association schemes with optional filtering.  This endpoint allows clients to fetch field association schemes with optional filtering by project IDs and text queries. The response includes scheme details with navigation links and filter metadata when applicable.  Filtering Behavior:   *  When projectId or query parameters are provided, the response includes matchedFilters metadata showing which filters were applied.  *  When no filters are applied, matchedFilters is omitted from individual scheme objects  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 0 # Int64[] | (optional) List of project IDs to filter schemes by. If not provided, schemes from all projects are returned. (optional)
$Query = "MyQuery" # String | (optional) Text filter for scheme name or description matching (case-insensitive). If not provided, no text filtering is applied. (optional)
$StartAt = 789 # Int64 | Zero-based index of the first item to return (default: 0) (optional) (default to 0)
$MaxResults = 56 # Int32 | Maximum number of items to return per page (default: 50, max: 100) (optional) (default to 50)

# Get field schemes
try {
    $Result = Get-FieldAssociationSchemes -ProjectId $ProjectId -Query $Query -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-FieldAssociationSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | [**Int64[]**](Int64.md)| (optional) List of project IDs to filter schemes by. If not provided, schemes from all projects are returned. | [optional] 
 **Query** | **String**| (optional) Text filter for scheme name or description matching (case-insensitive). If not provided, no text filtering is applied. | [optional] 
 **StartAt** | **Int64**| Zero-based index of the first item to return (default: 0) | [optional] [default to 0]
 **MaxResults** | **Int32**| Maximum number of items to return per page (default: 50, max: 100) | [optional] [default to 50]

### Return type

[**PageBean2GetFieldAssociationSchemeResponse**](PageBean2GetFieldAssociationSchemeResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectsWithFieldSchemes"></a>
# **Get-ProjectsWithFieldSchemes**
> PageBean2GetProjectsWithFieldSchemesResponse Get-ProjectsWithFieldSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get projects with field schemes

Get projects with field association schemes. This will be a temporary API but useful when transitioning from the legacy field configuration APIs to the new ones.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 0 # Int64[] | List of project ids to filter the results by.
$StartAt = 789 # Int64 | The starting index of the returned projects. Base index: 0. (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of projects to return per page, maximum allowed value is 100. (optional) (default to 50)

# Get projects with field schemes
try {
    $Result = Get-ProjectsWithFieldSchemes -ProjectId $ProjectId -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectsWithFieldSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | [**Int64[]**](Int64.md)| List of project ids to filter the results by. | 
 **StartAt** | **Int64**| The starting index of the returned projects. Base index: 0. | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of projects to return per page, maximum allowed value is 100. | [optional] [default to 50]

### Return type

[**PageBean2GetProjectsWithFieldSchemesResponse**](PageBean2GetProjectsWithFieldSchemesResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-FieldAssociationSchemeItemParameters"></a>
# **Remove-FieldAssociationSchemeItemParameters**
> void Remove-FieldAssociationSchemeItemParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Remove field parameters

Remove field association parameters overrides for work types.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequestBody = @{ key_example = $ParameterRemovalDetails = Initialize-ParameterRemovalDetails -Parameters "MyParameters" -SchemeId 0 -WorkTypeIds 0 } # System.Collections.Hashtable | 

# Remove field parameters
try {
    $Result = Remove-FieldAssociationSchemeItemParameters -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-FieldAssociationSchemeItemParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](Array.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-FieldsAssociatedWithSchemes"></a>
# **Remove-FieldsAssociatedWithSchemes**
> MinimalFieldSchemeToFieldsResponse Remove-FieldsAssociatedWithSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Remove fields associated with field schemes

Remove fields associated with field association schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequestBody = $RemoveFieldAssociationsRequestItem = Initialize-RemoveFieldAssociationsRequestItem -SchemeIds 0
$RequestBody = @{ key_example = $RemoveFieldAssociationsRequestItem } # System.Collections.Hashtable | The request containing the schemes and fields to be removed.

# Remove fields associated with field schemes
try {
    $Result = Remove-FieldsAssociatedWithSchemes -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-FieldsAssociatedWithSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](RemoveFieldAssociationsRequestItem.md)| The request containing the schemes and fields to be removed. | 

### Return type

[**MinimalFieldSchemeToFieldsResponse**](MinimalFieldSchemeToFieldsResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-FieldAssociationSchemeFields"></a>
# **Search-FieldAssociationSchemeFields**
> PageBean2FieldAssociationSchemeFieldSearchResult Search-FieldAssociationSchemeFields<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldId] <String[]><br>

Search field scheme fields

Search for fields belonging to a given field association scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The scheme ID to search for child fields
$StartAt = 789 # Int64 | The starting index of the returned fields. Base index: 0. (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of fields to return per page, maximum allowed value is 100. (optional) (default to 50)
$FieldId = "MyFieldId" # String[] | The field IDs to filter by, if empty then all fields belonging to a field association scheme will be returned (optional)

# Search field scheme fields
try {
    $Result = Search-FieldAssociationSchemeFields -Id $Id -StartAt $StartAt -MaxResults $MaxResults -FieldId $FieldId
} catch {
    Write-Host ("Exception occurred when calling Search-FieldAssociationSchemeFields: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The scheme ID to search for child fields | 
 **StartAt** | **Int64**| The starting index of the returned fields. Base index: 0. | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of fields to return per page, maximum allowed value is 100. | [optional] [default to 50]
 **FieldId** | [**String[]**](String.md)| The field IDs to filter by, if empty then all fields belonging to a field association scheme will be returned | [optional] 

### Return type

[**PageBean2FieldAssociationSchemeFieldSearchResult**](PageBean2FieldAssociationSchemeFieldSearchResult.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-FieldAssociationSchemeProjects"></a>
# **Search-FieldAssociationSchemeProjects**
> PageBean2FieldAssociationSchemeProjectSearchResult Search-FieldAssociationSchemeProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>

Search field scheme projects

REST Endpoint for searching for projects belonging to a given field association scheme  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The scheme id to search for associated projects
$StartAt = 789 # Int64 | The starting index of the returned projects. Base index: 0. (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of projects to return per page, maximum allowed value is 100. (optional) (default to 50)
$ProjectId = 0 # Int64[] | The project Ids to filter by, if empty then all projects belonging to a field association scheme will be returned (optional)

# Search field scheme projects
try {
    $Result = Search-FieldAssociationSchemeProjects -Id $Id -StartAt $StartAt -MaxResults $MaxResults -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Search-FieldAssociationSchemeProjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The scheme id to search for associated projects | 
 **StartAt** | **Int64**| The starting index of the returned projects. Base index: 0. | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of projects to return per page, maximum allowed value is 100. | [optional] [default to 50]
 **ProjectId** | [**Int64[]**](Int64.md)| The project Ids to filter by, if empty then all projects belonging to a field association scheme will be returned | [optional] 

### Return type

[**PageBean2FieldAssociationSchemeProjectSearchResult**](PageBean2FieldAssociationSchemeProjectSearchResult.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldAssociationScheme"></a>
# **Update-FieldAssociationScheme**
> UpdateFieldAssociationSchemeResponse Update-FieldAssociationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateFieldAssociationSchemeRequest] <PSCustomObject><br>

Update field scheme

Endpoint for updating an existing field association scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | 
$UpdateFieldAssociationSchemeRequest = Initialize-UpdateFieldAssociationSchemeRequest -Description "MyDescription" -Name "MyName" # UpdateFieldAssociationSchemeRequest | The request containing the desired updates to the field association scheme

# Update field scheme
try {
    $Result = Update-FieldAssociationScheme -Id $Id -UpdateFieldAssociationSchemeRequest $UpdateFieldAssociationSchemeRequest
} catch {
    Write-Host ("Exception occurred when calling Update-FieldAssociationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**|  | 
 **UpdateFieldAssociationSchemeRequest** | [**UpdateFieldAssociationSchemeRequest**](UpdateFieldAssociationSchemeRequest.md)| The request containing the desired updates to the field association scheme | 

### Return type

[**UpdateFieldAssociationSchemeResponse**](UpdateFieldAssociationSchemeResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldAssociationSchemeItemParameters"></a>
# **Update-FieldAssociationSchemeItemParameters**
> UpdateFieldSchemeParametersResponse Update-FieldAssociationSchemeItemParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Update field parameters

Update field association item parameters in field association schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequestBody = @{ key_example = 
$FieldsSchemeItemParameter = Initialize-FieldsSchemeItemParameter -Description "MyDescription" -IsRequired $false
$FieldsSchemeItemWorkTypeParameter = Initialize-FieldsSchemeItemWorkTypeParameter -Description "MyDescription" -IsRequired $false -WorkTypeId 0
$UpdateFieldSchemeParametersRequest = Initialize-UpdateFieldSchemeParametersRequest -Parameters $FieldsSchemeItemParameter -SchemeIds 0 -WorkTypeParameters $FieldsSchemeItemWorkTypeParameter
 } # System.Collections.Hashtable | The request containing the field association scheme id and the parameters to update.

# Update field parameters
try {
    $Result = Update-FieldAssociationSchemeItemParameters -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-FieldAssociationSchemeItemParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](Array.md)| The request containing the field association scheme id and the parameters to update. | 

### Return type

[**UpdateFieldSchemeParametersResponse**](UpdateFieldSchemeParametersResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldsAssociatedWithSchemes"></a>
# **Update-FieldsAssociatedWithSchemes**
> FieldSchemeToFieldsResponse Update-FieldsAssociatedWithSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Update fields associated with field schemes

Update fields associated with field association schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequestBody = @{ key_example = $UpdateFieldAssociationsRequestItem = Initialize-UpdateFieldAssociationsRequestItem -RestrictedToWorkTypes 0 -SchemeIds 0 } # System.Collections.Hashtable | The request containing the schemes and work types to associate each field with.

# Update fields associated with field schemes
try {
    $Result = Update-FieldsAssociatedWithSchemes -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-FieldsAssociatedWithSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](Array.md)| The request containing the schemes and work types to associate each field with. | 

### Return type

[**FieldSchemeToFieldsResponse**](FieldSchemeToFieldsResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

