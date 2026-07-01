# PpdmApiReference.PpdmApiReference\Api.ReportingApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ReportRun**](ReportingApi.md#New-ReportRun) | **POST** /api/v2/reports | Generate report or report data
[**New-ScheduledReport**](ReportingApi.md#New-ScheduledReport) | **POST** /api/v2/report-schedules | Create a scheduled report.
[**Invoke-DeleteNodeById**](ReportingApi.md#Invoke-DeleteNodeById) | **DELETE** /api/v2/report-nodes/{id} | Delete report service node
[**Invoke-DeleteScheduledReport**](ReportingApi.md#Invoke-DeleteScheduledReport) | **DELETE** /api/v2/report-schedules/{id} | Delete a scheduled report
[**Deploy-Node**](ReportingApi.md#Deploy-Node) | **POST** /api/v2/report-nodes | Deploy report service node
[**Get-NodeById**](ReportingApi.md#Get-NodeById) | **GET** /api/v2/report-nodes/{id} | Get report service node
[**Get-NodesReporting**](ReportingApi.md#Get-NodesReporting) | **GET** /api/v2/report-nodes | Return a list of report service nodes
[**Get-ReportById**](ReportingApi.md#Get-ReportById) | **GET** /api/v2/reports/{id} | Get a report
[**Get-ReportExport**](ReportingApi.md#Get-ReportExport) | **GET** /api/v2/report-exports/{id} | Download report file
[**Get-ReportingServiceStatus**](ReportingApi.md#Get-ReportingServiceStatus) | **GET** /api/v2/report-nodes/{id}/status | Get Reporting node service status
[**Get-ReportsTelemetry**](ReportingApi.md#Get-ReportsTelemetry) | **GET** /api/v2/report-service/telemetry | Get reporting server telemetry
[**Get-ScheduledReport**](ReportingApi.md#Get-ScheduledReport) | **GET** /api/v2/report-schedules/{id} | Get scheduled report details
[**Get-ScheduledReports**](ReportingApi.md#Get-ScheduledReports) | **GET** /api/v2/report-schedules | Get scheduled reports
[**Invoke-ManageNodeById**](ReportingApi.md#Invoke-ManageNodeById) | **POST** /api/v2/report-nodes/{id}/management | Manage report service node
[**Invoke-ReportEportStatusResponse**](ReportingApi.md#Invoke-ReportEportStatusResponse) | **GET** /api/v2/report-exports/{id}/status | Get report export status
[**Invoke-ReportExport**](ReportingApi.md#Invoke-ReportExport) | **POST** /api/v2/report-exports | Create request to export report
[**Invoke-ReportStatusResponse**](ReportingApi.md#Invoke-ReportStatusResponse) | **GET** /api/v2/reports/{id}/status | Get report status
[**Invoke-ReportingEngineStatus**](ReportingApi.md#Invoke-ReportingEngineStatus) | **GET** /api/v2/reporting-engine/status | Get Reporting Engine components status
[**Update-ScheduledReport**](ReportingApi.md#Update-ScheduledReport) | **PATCH** /api/v2/report-schedules/{id} | Update the scheduled report


<a id="New-ReportRun"></a>
# **New-ReportRun**
> PostReportResponse New-ReportRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunReportParameters] <PSCustomObject><br>

Generate report or report data

Creates a long running process to generate the report or report data and returns the run ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$RunReportParameters = Initialize-RunReportParameters -VarFilter "MyVarFilter" -Orderby "MyOrderby" -Page 0 -PageSize 0 -ReportTemplateId "MyReportTemplateId" # RunReportParameters |  (optional)

# Generate report or report data
try {
    $Result = New-ReportRun -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -RunReportParameters $RunReportParameters
} catch {
    Write-Host ("Exception occurred when calling New-ReportRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **RunReportParameters** | [**RunReportParameters**](RunReportParameters.md)|  | [optional] 

### Return type

[**PostReportResponse**](PostReportResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ScheduledReport"></a>
# **New-ScheduledReport**
> ReportScheduleResponse New-ScheduledReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportSchedule] <PSCustomObject><br>

Create a scheduled report.

Create scheduled report, to execute periodically to send an email with report as attachment. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ReportScheduleEmailParameters = Initialize-ReportScheduleEmailParameters -Content "MyContent" -Recipients "MyRecipients" -Subject "MySubject"
$ReportFilters = Initialize-ReportFilters -DisplayValue "MyDisplayValue" -Name "MyName" -Value "MyValue"
$ReportScheduleFormatParameters = Initialize-ReportScheduleFormatParameters -FitContent $false -FormatType "CSV" -PageOrientation "PORTRAIT" -PageSize "A4"
$ReportScheduleSchedule = Initialize-ReportScheduleSchedule -DayOfMonth 0 -Frequency "DAILY" -Name "MyName" -StartTime (Get-Date) -WeekDays "SUNDAY"
$ReportSchedule = Initialize-ReportSchedule -EmailParameters $ReportScheduleEmailParameters -Enabled $false -Filters $ReportFilters -FormatParameters $ReportScheduleFormatParameters -PublicationMethod "EMAIL" -ReportCategory "MyReportCategory" -ReportDescription "MyReportDescription" -ReportName "MyReportName" -ReportTemplateId "MyReportTemplateId" -Schedule $ReportScheduleSchedule # ReportSchedule | 

# Create a scheduled report.
try {
    $Result = New-ScheduledReport -ReportSchedule $ReportSchedule
} catch {
    Write-Host ("Exception occurred when calling New-ScheduledReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportSchedule** | [**ReportSchedule**](ReportSchedule.md)|  | 

### Return type

[**ReportScheduleResponse**](ReportScheduleResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNodeById"></a>
# **Invoke-DeleteNodeById**
> void Invoke-DeleteNodeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete report service node

Delete report service node by providing its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | The ID of the report service node.

# Delete report service node
try {
    $Result = Invoke-DeleteNodeById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNodeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the report service node. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteScheduledReport"></a>
# **Invoke-DeleteScheduledReport**
> void Invoke-DeleteScheduledReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a scheduled report

Deletes the scheduled report and stops sending emails containing reports. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID of the scheduled report.

# Delete a scheduled report
try {
    $Result = Invoke-DeleteScheduledReport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteScheduledReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the scheduled report. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Deploy-Node"></a>
# **Deploy-Node**
> ReportNodeResponse Deploy-Node<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportNodeResource] <PSCustomObject><br>

Deploy report service node

Deploy a report service node. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ReportNodeDeploymentConfigLocation = Initialize-ReportNodeDeploymentConfigLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -HostMoref "MyHostMoref"
$ReportNodeNetwork = Initialize-ReportNodeNetwork -DnsServers "MyDnsServers" -Fqdn "MyFqdn" -Gateway "MyGateway" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpAddressFamily "IPV4" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref"
$ReportNodeDeploymentConfig = Initialize-ReportNodeDeploymentConfig -DiskProvisioning "THIN" -Location $ReportNodeDeploymentConfigLocation -Networks $ReportNodeNetwork -Ovafile "MyOvafile" -VmName "MyVmName"

$ReportNodeResource = Initialize-ReportNodeResource -DeploymentConfig $ReportNodeDeploymentConfig -HostName "MyHostName" -Id "MyId" -InventorySourceId "MyInventorySourceId" # ReportNodeResource |  (optional)

# Deploy report service node
try {
    $Result = Deploy-Node -ReportNodeResource $ReportNodeResource
} catch {
    Write-Host ("Exception occurred when calling Deploy-Node: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportNodeResource** | [**ReportNodeResource**](ReportNodeResource.md)|  | [optional] 

### Return type

[**ReportNodeResponse**](ReportNodeResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NodeById"></a>
# **Get-NodeById**
> ReportNodeResponse Get-NodeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get report service node

Get report service node by providing its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | The ID of the report service node.

# Get report service node
try {
    $Result = Get-NodeById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-NodeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the report service node. | 

### Return type

[**ReportNodeResponse**](ReportNodeResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NodesReporting"></a>
# **Get-NodesReporting**
> ReportServiceNodes Get-NodesReporting<br>

Return a list of report service nodes

Return a list of all report service nodes. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Return a list of report service nodes
try {
    $Result = Get-NodesReporting
} catch {
    Write-Host ("Exception occurred when calling Get-NodesReporting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportServiceNodes**](ReportServiceNodes.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ReportById"></a>
# **Get-ReportById**
> ReportResponse Get-ReportById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-View] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>

Get a report

Get a report by providing its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | The ID of the report.
$View = "MyView" # String | The output format. Supported values are: json
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)

# Get a report
try {
    $Result = Get-ReportById -Id $Id -View $View -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-ReportById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the report. | 
 **View** | **String**| The output format. Supported values are: json | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]

### Return type

[**ReportResponse**](ReportResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ReportExport"></a>
# **Get-ReportExport**
> System.IO.FileInfo Get-ReportExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormatType] <String><br>

Download report file

Download a report file by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID returned from the POST /report API
$FormatType = "MyFormatType" # String | ID returned from the POST /report API

# Download report file
try {
    $Result = Get-ReportExport -Id $Id -FormatType $FormatType
} catch {
    Write-Host ("Exception occurred when calling Get-ReportExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID returned from the POST /report API | 
 **FormatType** | **String**| ID returned from the POST /report API | 

### Return type

**System.IO.FileInfo**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ReportingServiceStatus"></a>
# **Get-ReportingServiceStatus**
> ReportNodeServiceStatus Get-ReportingServiceStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-View] <String><br>

Get Reporting node service status

Get the status of the services that are running on the report node with specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | Reporting node ID
$View = "SUMMARY" # String | The status in summary or detail format (optional) (default to "SUMMARY")

# Get Reporting node service status
try {
    $Result = Get-ReportingServiceStatus -Id $Id -View $View
} catch {
    Write-Host ("Exception occurred when calling Get-ReportingServiceStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Reporting node ID | 
 **View** | **String**| The status in summary or detail format | [optional] [default to &quot;SUMMARY&quot;]

### Return type

[**ReportNodeServiceStatus**](ReportNodeServiceStatus.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ReportsTelemetry"></a>
# **Get-ReportsTelemetry**
> ReportTelemetryResponse Get-ReportsTelemetry<br>

Get reporting server telemetry

Get the reporting server telemetry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Get reporting server telemetry
try {
    $Result = Get-ReportsTelemetry
} catch {
    Write-Host ("Exception occurred when calling Get-ReportsTelemetry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportTelemetryResponse**](ReportTelemetryResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ScheduledReport"></a>
# **Get-ScheduledReport**
> ReportScheduleResponse Get-ScheduledReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get scheduled report details

Get scheduled report details. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID of the scheduled report.

# Get scheduled report details
try {
    $Result = Get-ScheduledReport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ScheduledReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the scheduled report. | 

### Return type

[**ReportScheduleResponse**](ReportScheduleResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ScheduledReports"></a>
# **Get-ScheduledReports**
> ReportScheduleResponses Get-ScheduledReports<br>

Get scheduled reports

Get the scheduled reports. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Get scheduled reports
try {
    $Result = Get-ScheduledReports
} catch {
    Write-Host ("Exception occurred when calling Get-ScheduledReports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportScheduleResponses**](ReportScheduleResponses.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ManageNodeById"></a>
# **Invoke-ManageNodeById**
> ReportNodeManagementResponse Invoke-ManageNodeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeManagementRequest] <PSCustomObject><br>

Manage report service node

Enables a user to run the predefined commands on the report service node. * Supported operations are: * POWER_ON - the reporting service VM. * POWER_OFF - the reporting service VM. * ROTATE_PASSWORD - for reporting service VM. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | The ID of the Report Service node.
$NodeManagementRequest = Initialize-NodeManagementRequest -Operation "POWER_ON" # NodeManagementRequest |  (optional)

# Manage report service node
try {
    $Result = Invoke-ManageNodeById -Id $Id -NodeManagementRequest $NodeManagementRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ManageNodeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the Report Service node. | 
 **NodeManagementRequest** | [**NodeManagementRequest**](NodeManagementRequest.md)|  | [optional] 

### Return type

[**ReportNodeManagementResponse**](ReportNodeManagementResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReportEportStatusResponse"></a>
# **Invoke-ReportEportStatusResponse**
> ReportExportStatusResponse Invoke-ReportEportStatusResponse<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormatType] <String><br>

Get report export status

Returns report export status. Possible values include: RUNNING, QUEUED, READY. The path parameter id and the query parameter formatType uniquely identifies the report export as the same ID will be used in case of the export to multiple formats. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID returned from the POST /report API
$FormatType = "MyFormatType" # String | 

# Get report export status
try {
    $Result = Invoke-ReportEportStatusResponse -Id $Id -FormatType $FormatType
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReportEportStatusResponse: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID returned from the POST /report API | 
 **FormatType** | **String**|  | 

### Return type

[**ReportExportStatusResponse**](ReportExportStatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReportExport"></a>
# **Invoke-ReportExport**
> ExportReportResponse Invoke-ReportExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportReportParameters] <PSCustomObject><br>

Create request to export report

Create a request to export or save a generated report. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ExportReportParametersEmailParametersFiltersInner = Initialize-ExportReportParametersEmailParametersFiltersInner -Name "MyName" -Value "MyValue"
$ExportReportParametersEmailParameters = Initialize-ExportReportParametersEmailParameters -Content "MyContent" -Filters $ExportReportParametersEmailParametersFiltersInner -ReportTimeDisplay "MyReportTimeDisplay" -ReportType "MyReportType"

$FormatParameters = Initialize-FormatParameters -FitContent $false -FormatType "CSV" -PageOrientation "PORTRAIT" -PageSize "MyPageSize"
$ExportReportParameters = Initialize-ExportReportParameters -EmailParameters $ExportReportParametersEmailParameters -EmailRecipient "MyEmailRecipient" -EmailSubject "MyEmailSubject" -FormatParameters $FormatParameters -PublicationMethod "FILE" -ReportId "MyReportId" # ExportReportParameters |  (optional)

# Create request to export report
try {
    $Result = Invoke-ReportExport -ExportReportParameters $ExportReportParameters
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReportExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExportReportParameters** | [**ExportReportParameters**](ExportReportParameters.md)|  | [optional] 

### Return type

[**ExportReportResponse**](ExportReportResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReportStatusResponse"></a>
# **Invoke-ReportStatusResponse**
> ReportStatusResponse Invoke-ReportStatusResponse<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get report status

Retrieves the report status. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID returned from the POST /report API

# Get report status
try {
    $Result = Invoke-ReportStatusResponse -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReportStatusResponse: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID returned from the POST /report API | 

### Return type

[**ReportStatusResponse**](ReportStatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReportingEngineStatus"></a>
# **Invoke-ReportingEngineStatus**
> ReportingEngineStatusResponse Invoke-ReportingEngineStatus<br>

Get Reporting Engine components status

Retrieves the status of the Reporting Engine components. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Get Reporting Engine components status
try {
    $Result = Invoke-ReportingEngineStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReportingEngineStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportingEngineStatusResponse**](ReportingEngineStatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ScheduledReport"></a>
# **Update-ScheduledReport**
> ReportScheduleResponse Update-ScheduledReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateScheduledReportRequest] <PSCustomObject><br>

Update the scheduled report

Update the scheduled report, to execute periodically to send an email with report as attachment. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID of the scheduled report to update.
$ReportScheduleEmailParameters = Initialize-ReportScheduleEmailParameters -Content "MyContent" -Recipients "MyRecipients" -Subject "MySubject"
$ReportFilters = Initialize-ReportFilters -DisplayValue "MyDisplayValue" -Name "MyName" -Value "MyValue"
$ReportScheduleFormatParameters = Initialize-ReportScheduleFormatParameters -FitContent $false -FormatType "CSV" -PageOrientation "PORTRAIT" -PageSize "A4"
$ReportScheduleSchedule = Initialize-ReportScheduleSchedule -DayOfMonth 0 -Frequency "DAILY" -Name "MyName" -StartTime (Get-Date) -WeekDays "SUNDAY"
$UpdateScheduledReportRequest = Initialize-UpdateScheduledReportRequest -EmailParameters $ReportScheduleEmailParameters -Enabled $false -Filters $ReportFilters -FormatParameters $ReportScheduleFormatParameters -PublicationMethod "EMAIL" -ReportCategory "MyReportCategory" -ReportDescription "MyReportDescription" -ReportName "MyReportName" -ReportTemplateId "MyReportTemplateId" -Schedule $ReportScheduleSchedule -CreatedAt (Get-Date) -Id "MyId" -UpdatedAt (Get-Date) # UpdateScheduledReportRequest |  (optional)

# Update the scheduled report
try {
    $Result = Update-ScheduledReport -Id $Id -UpdateScheduledReportRequest $UpdateScheduledReportRequest
} catch {
    Write-Host ("Exception occurred when calling Update-ScheduledReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the scheduled report to update. | 
 **UpdateScheduledReportRequest** | [**UpdateScheduledReportRequest**](UpdateScheduledReportRequest.md)|  | [optional] 

### Return type

[**ReportScheduleResponse**](ReportScheduleResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

