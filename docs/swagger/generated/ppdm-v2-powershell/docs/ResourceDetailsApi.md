# PpdmApiReference.PpdmApiReference\Api.ResourceDetailsApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Export**](ResourceDetailsApi.md#Get-Export) | **GET** /api/v2/exports/{resource} | Download export file for specified resource type


<a id="Get-Export"></a>
# **Get-Export**
> System.IO.FileInfo Get-Export<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Resource] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchTerm] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeZone] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludingSummary] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Accept] <String><br>

Download export file for specified resource type

Download an export file for the specified resource type. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Resource = "MyResource" # String | The resource type to be exported.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$SearchTerm = "MySearchTerm" # String | The general query parameter to search. (optional)
$TimeZone = "MyTimeZone" # String | The time zone to which all dates and times of the export file are formatted. The value can be an abbreviation such as ``PST`` or a full name such as ``America/Los_Angeles``. (optional)
$IncludingSummary = "MyIncludingSummary" # String | Including summary calculation. (optional)
$Q = "MyQ" # String | The general query parameter to search all the fields of the desired resource types. (optional)
$Accept = "MyAccept" # String | The media type of the requested export file. (optional)

# Download export file for specified resource type
try {
    $Result = Get-Export -Resource $Resource -Filter $Filter -Orderby $Orderby -SearchTerm $SearchTerm -TimeZone $TimeZone -IncludingSummary $IncludingSummary -Q $Q -Accept $Accept
} catch {
    Write-Host ("Exception occurred when calling Get-Export: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Resource** | **String**| The resource type to be exported. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **SearchTerm** | **String**| The general query parameter to search. | [optional] 
 **TimeZone** | **String**| The time zone to which all dates and times of the export file are formatted. The value can be an abbreviation such as &#x60;&#x60;PST&#x60;&#x60; or a full name such as &#x60;&#x60;America/Los_Angeles&#x60;&#x60;. | [optional] 
 **IncludingSummary** | **String**| Including summary calculation. | [optional] 
 **Q** | **String**| The general query parameter to search all the fields of the desired resource types. | [optional] 
 **Accept** | **String**| The media type of the requested export file. | [optional] 

### Return type

**System.IO.FileInfo**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

