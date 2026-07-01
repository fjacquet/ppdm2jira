# PpdmApiReference.PpdmApiReference\Api.AssetMetadataApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AssetFileInstances**](AssetMetadataApi.md#Get-AssetFileInstances) | **GET** /api/v2/assets/{id}/file-instances | Get files and folders within a protected asset
[**Get-FileInstances**](AssetMetadataApi.md#Get-FileInstances) | **GET** /api/v2/file-instances | Get files and folders within protected assets


<a id="Get-AssetFileInstances"></a>
# **Get-AssetFileInstances**
> FileInstances Get-AssetFileInstances<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyStartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyEndDate] <System.Nullable[System.DateTime]><br>

Get files and folders within a protected asset

Retrieves a paginated list of documents that represent files and folders within the specified asset. A number of query parameters can be used to customize the ordering, pagination, and filtering of the result. By default, a list of 10 objects is returned. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protected asset.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$CopyStartDate = (Get-Date) # System.DateTime | The start date from which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be greater or equal to a particular copy start date. (optional)
$CopyEndDate = (Get-Date) # System.DateTime | The end date up to which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be less or equal to a particular copy end date. (optional)

# Get files and folders within a protected asset
try {
    $Result = Get-AssetFileInstances -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -CopyStartDate $CopyStartDate -CopyEndDate $CopyEndDate
} catch {
    Write-Host ("Exception occurred when calling Get-AssetFileInstances: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protected asset. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **CopyStartDate** | **System.DateTime**| The start date from which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be greater or equal to a particular copy start date. | [optional] 
 **CopyEndDate** | **System.DateTime**| The end date up to which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be less or equal to a particular copy end date. | [optional] 

### Return type

[**FileInstances**](FileInstances.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FileInstances"></a>
# **Get-FileInstances**
> FileInstances Get-FileInstances<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyStartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyEndDate] <System.Nullable[System.DateTime]><br>

Get files and folders within protected assets

Retrieves a paginated list of files and folder documents within the protected assets. By default, a list of 10 objects is returned. The specified query parameters customize the ordering, pagination, and filtering of the result. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$CopyStartDate = (Get-Date) # System.DateTime | The start date from which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be greater or equal to a particular copy start date. (optional)
$CopyEndDate = (Get-Date) # System.DateTime | The end date up to which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be less or equal to a particular copy end date. (optional)

# Get files and folders within protected assets
try {
    $Result = Get-FileInstances -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -CopyStartDate $CopyStartDate -CopyEndDate $CopyEndDate
} catch {
    Write-Host ("Exception occurred when calling Get-FileInstances: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **CopyStartDate** | **System.DateTime**| The start date from which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be greater or equal to a particular copy start date. | [optional] 
 **CopyEndDate** | **System.DateTime**| The end date up to which to show document copies.  Each file or folder copy has a copy start date and copy end date that records the from-and-to time.  Modifications to that file or folder cause another document to be indexed with a different copy start date and copy end date.  This filter limits result sets to be less or equal to a particular copy end date. | [optional] 

### Return type

[**FileInstances**](FileInstances.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

