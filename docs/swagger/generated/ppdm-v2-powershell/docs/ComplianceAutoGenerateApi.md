# PpdmApiReference.PpdmApiReference\Api.ComplianceAutoGenerateApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ComplianceResults**](ComplianceAutoGenerateApi.md#Get-ComplianceResults) | **GET** /api/v2/compliance-results | Get all compliance results
[**Get-ServiceLevelAgreement**](ComplianceAutoGenerateApi.md#Get-ServiceLevelAgreement) | **GET** /api/v2/service-level-agreements/{id} | Get a service level agreement by ID
[**Get-ServiceLevelAgreements**](ComplianceAutoGenerateApi.md#Get-ServiceLevelAgreements) | **GET** /api/v2/service-level-agreements | Get all service level agreements
[**Get-ServiceLevelObjective**](ComplianceAutoGenerateApi.md#Get-ServiceLevelObjective) | **GET** /api/v2/service-level-objectives/{id} | Get a service level objective by ID
[**Get-ServiceLevelObjectives**](ComplianceAutoGenerateApi.md#Get-ServiceLevelObjectives) | **GET** /api/v2/service-level-objectives | Get all service level objectives


<a id="Get-ComplianceResults"></a>
# **Get-ComplianceResults**
> ComplianceResults Get-ComplianceResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get all compliance results

Retrieves the compliance results. The compliance result is one run of compliance verification for one asset for all SLAs that are assigned to the asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get all compliance results
try {
    $Result = Get-ComplianceResults -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-ComplianceResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**ComplianceResults**](ComplianceResults.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServiceLevelAgreement"></a>
# **Get-ServiceLevelAgreement**
> ServiceLevelAgreement Get-ServiceLevelAgreement<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludingSummary] <System.Nullable[Boolean]><br>

Get a service level agreement by ID

Retrieves a service level agreement by ID. The service level agreement contains multiple service level objectives. The service level objective defines a compliance check item for data protection. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the service level agreement.
$IncludingSummary = $true # Boolean | Including summary calculation (optional) (default to $false)

# Get a service level agreement by ID
try {
    $Result = Get-ServiceLevelAgreement -Id $Id -IncludingSummary $IncludingSummary
} catch {
    Write-Host ("Exception occurred when calling Get-ServiceLevelAgreement: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the service level agreement. | 
 **IncludingSummary** | **Boolean**| Including summary calculation | [optional] [default to $false]

### Return type

[**ServiceLevelAgreement**](ServiceLevelAgreement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServiceLevelAgreements"></a>
# **Get-ServiceLevelAgreements**
> ServiceLevelAgreements Get-ServiceLevelAgreements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludingSummary] <System.Nullable[Boolean]><br>

Get all service level agreements

Retrieves all service level agreements. Each service level agreement contains multiple service level objectives. The service level objective defines a compliance check item for data protection. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$IncludingSummary = $true # Boolean | Including summary calculation (optional) (default to $false)

# Get all service level agreements
try {
    $Result = Get-ServiceLevelAgreements -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -IncludingSummary $IncludingSummary
} catch {
    Write-Host ("Exception occurred when calling Get-ServiceLevelAgreements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **IncludingSummary** | **Boolean**| Including summary calculation | [optional] [default to $false]

### Return type

[**ServiceLevelAgreements**](ServiceLevelAgreements.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServiceLevelObjective"></a>
# **Get-ServiceLevelObjective**
> ServiceLevelObjective Get-ServiceLevelObjective<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a service level objective by ID

Retrieves service level objective by ID. The each service level objective defines one compliance type. The compliance type must follow each service level objective that is required. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Service level objective ID.

# Get a service level objective by ID
try {
    $Result = Get-ServiceLevelObjective -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ServiceLevelObjective: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Service level objective ID. | 

### Return type

[**ServiceLevelObjective**](ServiceLevelObjective.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServiceLevelObjectives"></a>
# **Get-ServiceLevelObjectives**
> ServiceLevelObjectives Get-ServiceLevelObjectives<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all service level objectives

Retrieves all service level objectives. The each service level objective defines one compliance type. The compliance type must follow each service level objective that is required. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all service level objectives
try {
    $Result = Get-ServiceLevelObjectives -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ServiceLevelObjectives: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**ServiceLevelObjectives**](ServiceLevelObjectives.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

