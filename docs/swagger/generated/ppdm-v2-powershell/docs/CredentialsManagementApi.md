# PpdmApiReference.PpdmApiReference\Api.CredentialsManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BatchUpdateCredentials**](CredentialsManagementApi.md#Invoke-BatchUpdateCredentials) | **PATCH** /api/v2/credentials-batch | Credentials batch update
[**New-Credential**](CredentialsManagementApi.md#New-Credential) | **POST** /api/v2/credentials | Create a credential
[**Invoke-DeleteCredential**](CredentialsManagementApi.md#Invoke-DeleteCredential) | **DELETE** /api/v2/credentials/{id} | Delete a credential by ID
[**Get-Credential**](CredentialsManagementApi.md#Get-Credential) | **GET** /api/v2/credentials/{id} | Get a credential by ID
[**Get-Credentials**](CredentialsManagementApi.md#Get-Credentials) | **GET** /api/v2/credentials | Get all credentials
[**Update-Credential**](CredentialsManagementApi.md#Update-Credential) | **PUT** /api/v2/credentials/{id} | Update a credential by ID


<a id="Invoke-BatchUpdateCredentials"></a>
# **Invoke-BatchUpdateCredentials**
> CredentialsBatchResponse Invoke-BatchUpdateCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialsBatchRequests] <PSCustomObject><br>

Credentials batch update

Credentials batch update for password Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CredentialsBatchRequestBody = Initialize-CredentialsBatchRequestBody -Id "MyId" -Password "MyPassword"
$CredentialsBatchRequest = Initialize-CredentialsBatchRequest -Body $CredentialsBatchRequestBody -Id "MyId"

$CredentialsBatchRequests = Initialize-CredentialsBatchRequests -Requests $CredentialsBatchRequest # CredentialsBatchRequests |  (optional)

# Credentials batch update
try {
    $Result = Invoke-BatchUpdateCredentials -CredentialsBatchRequests $CredentialsBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchUpdateCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CredentialsBatchRequests** | [**CredentialsBatchRequests**](CredentialsBatchRequests.md)|  | [optional] 

### Return type

[**CredentialsBatchResponse**](CredentialsBatchResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-Credential"></a>
# **New-Credential**
> Credential New-Credential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Credential] <PSCustomObject><br>

Create a credential

Creates a **Credential** in PowerProtect Data Manager. **Credential** contains username and password. The password is securely stored in the lockbox of PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CredentialCreatedByUser = Initialize-CredentialCreatedByUser -Id "MyId" -Owner "MyOwner"
$CredentialExtraInfo = Initialize-CredentialExtraInfo -Name "MyName" -Value "MyValue"
$Credential = Initialize-Credential -ConsumersCount 0 -CreatedByUser $CredentialCreatedByUser -ExtraInfo $CredentialExtraInfo -Id "MyId" -Internal $false -Method "BASIC" -Name "MyName" -OriginId "MyOriginId" -Password "MyPassword" -SecretId "MySecretId" -SystemId "MySystemId" -Type "DATADOMAIN" -Username "MyUsername" # Credential |  (optional)

# Create a credential
try {
    $Result = New-Credential -Credential $Credential
} catch {
    Write-Host ("Exception occurred when calling New-Credential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Credential** | [**Credential**](Credential.md)|  | [optional] 

### Return type

[**Credential**](Credential.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCredential"></a>
# **Invoke-DeleteCredential**
> void Invoke-DeleteCredential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a credential by ID

Deletes a **Credential** by ID from PowerProtect Data Manager. The deleted **Credential** is removed from PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the credential.

# Delete a credential by ID
try {
    $Result = Invoke-DeleteCredential -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCredential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the credential. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Credential"></a>
# **Get-Credential**
> Credential Get-Credential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a credential by ID

Retrieves a **Credential** by ID. **Credential** contains username and password. The password is securely stored in the lockbox of PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the credential.

# Get a credential by ID
try {
    $Result = Get-Credential -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Credential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the credential. | 

### Return type

[**Credential**](Credential.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Credentials"></a>
# **Get-Credentials**
> Credentials Get-Credentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all credentials

Retrieves all **Credentials** in PowerProtect Data Manager. **Credentials** contains username and password or token. The password is securely stored in the lockbox of PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all credentials
try {
    $Result = Get-Credentials -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Credentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Credentials**](Credentials.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Credential"></a>
# **Update-Credential**
> Credential Update-Credential<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Credential] <PSCustomObject><br>

Update a credential by ID

Updates a **Credential** by ID. **Credential** contains username and password. The password is securely stored in the lockbox of PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the credential.
$CredentialCreatedByUser = Initialize-CredentialCreatedByUser -Id "MyId" -Owner "MyOwner"
$CredentialExtraInfo = Initialize-CredentialExtraInfo -Name "MyName" -Value "MyValue"
$Credential = Initialize-Credential -ConsumersCount 0 -CreatedByUser $CredentialCreatedByUser -ExtraInfo $CredentialExtraInfo -Id "MyId" -Internal $false -Method "BASIC" -Name "MyName" -OriginId "MyOriginId" -Password "MyPassword" -SecretId "MySecretId" -SystemId "MySystemId" -Type "DATADOMAIN" -Username "MyUsername" # Credential |  (optional)

# Update a credential by ID
try {
    $Result = Update-Credential -Id $Id -Credential $Credential
} catch {
    Write-Host ("Exception occurred when calling Update-Credential: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the credential. | 
 **Credential** | [**Credential**](Credential.md)|  | [optional] 

### Return type

[**Credential**](Credential.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

