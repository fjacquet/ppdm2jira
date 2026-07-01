# PpdmApiReference.PpdmApiReference\Api.ComplianceApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ServiceLevelAgreement**](ComplianceApi.md#New-ServiceLevelAgreement) | **POST** /api/v2/service-level-agreements | Create a service level agreement
[**Invoke-DeleteServiceLevelAgreement**](ComplianceApi.md#Invoke-DeleteServiceLevelAgreement) | **DELETE** /api/v2/service-level-agreements/{id} | Delete a service level agreement by ID
[**Get-AssetComplianceDetails**](ComplianceApi.md#Get-AssetComplianceDetails) | **GET** /api/v2/asset-compliance-details | Export asset compliance details as CSV
[**Get-ComplianceDetails**](ComplianceApi.md#Get-ComplianceDetails) | **GET** /api/v2/compliance-details | Get compliance details
[**Get-ComplianceResult**](ComplianceApi.md#Get-ComplianceResult) | **GET** /api/v2/compliance-results/{id} | Get compliance results by ID
[**Get-ComplianceResults**](ComplianceApi.md#Get-ComplianceResults) | **GET** /api/v2/compliance-results | Get all compliance results
[**Get-ComplianceSetting**](ComplianceApi.md#Get-ComplianceSetting) | **GET** /api/v2/common-settings/COMPLIANCE_SETTING | Get Compliance common settings
[**Get-CopyMetrics**](ComplianceApi.md#Get-CopyMetrics) | **GET** /api/v2/copy-metrics | Get copy metrics
[**Get-ServiceLevelAgreement**](ComplianceApi.md#Get-ServiceLevelAgreement) | **GET** /api/v2/service-level-agreements/{id} | Get a service level agreement by ID
[**Get-ServiceLevelAgreements**](ComplianceApi.md#Get-ServiceLevelAgreements) | **GET** /api/v2/service-level-agreements | Get all service level agreements
[**Get-ServiceLevelObjective**](ComplianceApi.md#Get-ServiceLevelObjective) | **GET** /api/v2/service-level-objectives/{id} | Get a service level objective by ID
[**Get-ServiceLevelObjectives**](ComplianceApi.md#Get-ServiceLevelObjectives) | **GET** /api/v2/service-level-objectives | Get all service level objectives
[**Get-SlaMetrics**](ComplianceApi.md#Get-SlaMetrics) | **GET** /api/v2/sla-metrics | Get SLA metrics
[**Set-ComplianceSetting**](ComplianceApi.md#Set-ComplianceSetting) | **PUT** /api/v2/common-settings/COMPLIANCE_SETTING | Update Compliance settings
[**Update-ServiceLevelAgreement**](ComplianceApi.md#Update-ServiceLevelAgreement) | **PUT** /api/v2/service-level-agreements/{id} | Update service level agreement by ID


<a id="New-ServiceLevelAgreement"></a>
# **New-ServiceLevelAgreement**
> ServiceLevelAgreement New-ServiceLevelAgreement<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceLevelAgreement] <PSCustomObject><br>

Create a service level agreement

Creates a service level agreement. The service level agreement contains multiple service level objectives. The service level objective defines a compliance check item for data protection. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Association = Initialize-Association -ObjectiveId "MyObjectiveId" -PolicyId "MyPolicyId" -Type "POLICY"

$TypedValue = Initialize-TypedValue -DataType "MyDataType" -Value "MyValue"
$ObjectiveValue = Initialize-ObjectiveValue -CopyType "ALL" -Name "INTERVAL" -TypedValues $TypedValue -ValueCardinality "SINGLE"

$ServiceLevelObjectiveConfiguration = Initialize-ServiceLevelObjectiveConfiguration -ActiveEnforcement $false -AssetType "VMWARE_VIRTUAL_MACHINE" -DefinitionId "MyDefinitionId" -InUse $false -Name "MyName" -StageType "PROTECTION" -ValuesList $ObjectiveValue

$ServiceLevelAgreementSummary = Initialize-ServiceLevelAgreementSummary -OutOfComplianceAssets 0 -OutOfComplianceObjectives 0 -PoliciesAtRisk 0 -TotalAssets 0 -TotalPolicies 0
$ServiceLevelAgreement = Initialize-ServiceLevelAgreement -Associations $Association -CreatedAt (Get-Date) -Description "MyDescription" -Enabled $false -Id "MyId" -Name "MyName" -ServiceLevelObjectives $ServiceLevelObjectiveConfiguration -StageType "PROTECTION" -Summary $ServiceLevelAgreementSummary -UpdatedAt (Get-Date) # ServiceLevelAgreement |  (optional)

# Create a service level agreement
try {
    $Result = New-ServiceLevelAgreement -ServiceLevelAgreement $ServiceLevelAgreement
} catch {
    Write-Host ("Exception occurred when calling New-ServiceLevelAgreement: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ServiceLevelAgreement** | [**ServiceLevelAgreement**](ServiceLevelAgreement.md)|  | [optional] 

### Return type

[**ServiceLevelAgreement**](ServiceLevelAgreement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteServiceLevelAgreement"></a>
# **Invoke-DeleteServiceLevelAgreement**
> void Invoke-DeleteServiceLevelAgreement<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a service level agreement by ID

Deletes a service level agreement by ID. The service level agreement contains multiple service level objectives. The service level objective defines a compliance check item for data protection. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the service level agreement.

# Delete a service level agreement by ID
try {
    $Result = Invoke-DeleteServiceLevelAgreement -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteServiceLevelAgreement: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the service level agreement. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetComplianceDetails"></a>
# **Get-AssetComplianceDetails**
> void Get-AssetComplianceDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Export asset compliance details as CSV

Retrieves asset compliance details from compliance verification result, extracts some fields, and exports to CSV. This API can support multiple filters (for example: slaId, timeRange, and completionStatus). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Export asset compliance details as CSV
try {
    $Result = Get-AssetComplianceDetails -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-AssetComplianceDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ComplianceDetails"></a>
# **Get-ComplianceDetails**
> ComplianceDetails Get-ComplianceDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get compliance details

Retrieves the **Compliance Details**. **Compliance Detail** is a summary of the compliance result for one asset on one SLA on one stage of policy. The compliance result is one run of compliance verification for one asset for all SLAs that are assigned to the asset. Normally, one compliance result has multiple assigned SLAs. This API can support multiple filters (for example, assetId and completionTime).  This API has a known issue for pagination. The size is not the actual page size, but the compliance result size.  For example, if you request a page size of 10, you receive 10 compliance results. If each compliance result has 4 SLAs on different stages, the return size is 40 instead of 10. The totalPages and totalElements properties are for the compliance result instead of compliance detail.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get compliance details
try {
    $Result = Get-ComplianceDetails -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-ComplianceDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ComplianceDetails**](ComplianceDetails.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ComplianceResult"></a>
# **Get-ComplianceResult**
> ComplianceResult Get-ComplianceResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get compliance results by ID

Retrieves the compliance result with the specified ID. The compliance result is one run of compliance verification for one asset for all SLAs that are assigned to the asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the compliance result.

# Get compliance results by ID
try {
    $Result = Get-ComplianceResult -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ComplianceResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the compliance result. | 

### Return type

[**ComplianceResult**](ComplianceResult.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

<a id="Get-ComplianceSetting"></a>
# **Get-ComplianceSetting**
> CommonSetting Get-ComplianceSetting<br>

Get Compliance common settings

Retrieves the Compliance common settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Get Compliance common settings
try {
    $Result = Get-ComplianceSetting
} catch {
    Write-Host ("Exception occurred when calling Get-ComplianceSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CopyMetrics"></a>
# **Get-CopyMetrics**
> CopyMetrics Get-CopyMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>

Get copy metrics

Get copy metrics per asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)

# Get copy metrics
try {
    $Result = Get-CopyMetrics -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CopyMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]

### Return type

[**CopyMetrics**](CopyMetrics.md) (PSCustomObject)

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

<a id="Get-SlaMetrics"></a>
# **Get-SlaMetrics**
> SlaMetrics Get-SlaMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get SLA metrics

Get metrics for Service Level Agreements (SLAs). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get SLA metrics
try {
    $Result = Get-SlaMetrics -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-SlaMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**SlaMetrics**](SlaMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-ComplianceSetting"></a>
# **Set-ComplianceSetting**
> CommonSetting Set-ComplianceSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update Compliance settings

Update Compliance common settings. As for expired copy deletion, there are 2 parameters to control specail handle for asset: 1) expiredCopyDeletionEnabledForAssetInExclusionPolicy    if the value is 'false', the deletion of expired copies of asset assigned to exclusion policy will be skipped. The default value is 'true', will not skip the expired copy deletion of asset assigned to exclusion policy 2) expiredCopyDeletionEnabledForAssetInDisabledPolicy    if the value is 'false', the deletion of expired copies of asset assigned to disabled policy will be skipped. The default value is 'true', will not skip the expired copy deletion of asset assigned to disabled policy Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update Compliance settings
try {
    $Result = Set-ComplianceSetting -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Set-ComplianceSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CommonSetting** | [**CommonSetting**](CommonSetting.md)|  | [optional] 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ServiceLevelAgreement"></a>
# **Update-ServiceLevelAgreement**
> ServiceLevelAgreement Update-ServiceLevelAgreement<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceLevelAgreement] <PSCustomObject><br>

Update service level agreement by ID

Updates a service level agreement by ID. The service level agreement contains multiple service level objectives. The service level objective defines a compliance check item for data protection. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the service level agreement.
$Association = Initialize-Association -ObjectiveId "MyObjectiveId" -PolicyId "MyPolicyId" -Type "POLICY"

$TypedValue = Initialize-TypedValue -DataType "MyDataType" -Value "MyValue"
$ObjectiveValue = Initialize-ObjectiveValue -CopyType "ALL" -Name "INTERVAL" -TypedValues $TypedValue -ValueCardinality "SINGLE"

$ServiceLevelObjectiveConfiguration = Initialize-ServiceLevelObjectiveConfiguration -ActiveEnforcement $false -AssetType "VMWARE_VIRTUAL_MACHINE" -DefinitionId "MyDefinitionId" -InUse $false -Name "MyName" -StageType "PROTECTION" -ValuesList $ObjectiveValue

$ServiceLevelAgreementSummary = Initialize-ServiceLevelAgreementSummary -OutOfComplianceAssets 0 -OutOfComplianceObjectives 0 -PoliciesAtRisk 0 -TotalAssets 0 -TotalPolicies 0
$ServiceLevelAgreement = Initialize-ServiceLevelAgreement -Associations $Association -CreatedAt (Get-Date) -Description "MyDescription" -Enabled $false -Id "MyId" -Name "MyName" -ServiceLevelObjectives $ServiceLevelObjectiveConfiguration -StageType "PROTECTION" -Summary $ServiceLevelAgreementSummary -UpdatedAt (Get-Date) # ServiceLevelAgreement |  (optional)

# Update service level agreement by ID
try {
    $Result = Update-ServiceLevelAgreement -Id $Id -ServiceLevelAgreement $ServiceLevelAgreement
} catch {
    Write-Host ("Exception occurred when calling Update-ServiceLevelAgreement: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the service level agreement. | 
 **ServiceLevelAgreement** | [**ServiceLevelAgreement**](ServiceLevelAgreement.md)|  | [optional] 

### Return type

[**ServiceLevelAgreement**](ServiceLevelAgreement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

