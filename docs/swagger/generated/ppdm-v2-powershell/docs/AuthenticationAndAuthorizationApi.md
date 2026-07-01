# PpdmApiReference.PpdmApiReference\Api.AuthenticationAndAuthorizationApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Rename-Password**](AuthenticationAndAuthorizationApi.md#Rename-Password) | **POST** /api/v2/account/change-password | Update user account login credentials
[**Invoke-ForgotPassword**](AuthenticationAndAuthorizationApi.md#Invoke-ForgotPassword) | **POST** /api/v2/account/forgot-password | Send an email to reset a user password
[**Invoke-Login**](AuthenticationAndAuthorizationApi.md#Invoke-Login) | **POST** /api/v2/login | Log in to your account
[**Invoke-Logout**](AuthenticationAndAuthorizationApi.md#Invoke-Logout) | **POST** /api/v2/logout | Log out from your account
[**Invoke-RefreshAccessToken**](AuthenticationAndAuthorizationApi.md#Invoke-RefreshAccessToken) | **POST** /api/v2/token | Renew the access token for extended usage period
[**Reset-Password**](AuthenticationAndAuthorizationApi.md#Reset-Password) | **POST** /api/v2/account/reset-password | Reset user password with temporary reset token


<a id="Rename-Password"></a>
# **Rename-Password**
> AccountChangePasswordResponse Rename-Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChangePasswordRequest] <PSCustomObject><br>

Update user account login credentials

Update the local user account login credentials by providing the username, current password, and a new password. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ChangePasswordRequest = Initialize-ChangePasswordRequest -NewPassword "MyNewPassword" -Password "MyPassword" -Username "MyUsername" # ChangePasswordRequest | 

# Update user account login credentials
try {
    $Result = Rename-Password -ChangePasswordRequest $ChangePasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Rename-Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChangePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

### Return type

[**AccountChangePasswordResponse**](AccountChangePasswordResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ForgotPassword"></a>
# **Invoke-ForgotPassword**
> void Invoke-ForgotPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForgotPasswordRequest] <PSCustomObject><br>

Send an email to reset a user password

This API or field has been deprecated. Please follow UI workflow for forget password functionality. Resets a user password by providing the username. An email is sent to the user email address with a link to reset the token. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ForgotPasswordRequest = Initialize-ForgotPasswordRequest -Username "MyUsername" # ForgotPasswordRequest |  (optional)

# Send an email to reset a user password
try {
    $Result = Invoke-ForgotPassword -ForgotPasswordRequest $ForgotPasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ForgotPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ForgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Login"></a>
# **Invoke-Login**
> AccessToken Invoke-Login<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LoginCredentials] <PSCustomObject><br>

Log in to your account

Logs in with user credentials. Once logged in, the user may perform operations granted to the user and defined by the user role. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Rsa = Initialize-Rsa -Passcode "MyPasscode"
$LoginCredentials = Initialize-LoginCredentials -Password "MyPassword" -Rsa $Rsa -Username "MyUsername" # LoginCredentials |  (optional)

# Log in to your account
try {
    $Result = Invoke-Login -LoginCredentials $LoginCredentials
} catch {
    Write-Host ("Exception occurred when calling Invoke-Login: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LoginCredentials** | [**LoginCredentials**](LoginCredentials.md)|  | [optional] 

### Return type

[**AccessToken**](AccessToken.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Logout"></a>
# **Invoke-Logout**
> void Invoke-Logout<br>

Log out from your account

Logs out of the user as specified in the access token. When logged out, the user that is defined in the access token can no longer run operations. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Log out from your account
try {
    $Result = Invoke-Logout
} catch {
    Write-Host ("Exception occurred when calling Invoke-Logout: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RefreshAccessToken"></a>
# **Invoke-RefreshAccessToken**
> AccessToken Invoke-RefreshAccessToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefreshAccessTokenRequest] <PSCustomObject><br>

Renew the access token for extended usage period

Extends the usage period of the user, as specified by the access token, by renewing the token. The grant_type in the request body must be refresh_token. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Authorization = "MyAuthorization" # String | Authorization token.
$RefreshAccessTokenRequest = Initialize-RefreshAccessTokenRequest -GrantType "authorization_code" -RefreshToken "MyRefreshToken" -Scope "MyScope" # RefreshAccessTokenRequest |  (optional)

# Renew the access token for extended usage period
try {
    $Result = Invoke-RefreshAccessToken -Authorization $Authorization -RefreshAccessTokenRequest $RefreshAccessTokenRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-RefreshAccessToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Authorization** | **String**| Authorization token. | 
 **RefreshAccessTokenRequest** | [**RefreshAccessTokenRequest**](RefreshAccessTokenRequest.md)|  | [optional] 

### Return type

[**AccessToken**](AccessToken.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-Password"></a>
# **Reset-Password**
> ResetPasswordResponse Reset-Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResetPasswordRequest] <PSCustomObject><br>

Reset user password with temporary reset token

This API or field has been deprecated. Please follow UI workflow for forget password functionality. Resets the user password with the temporary reset token. The temporary reset token is contained in the email sent to the user email address, after performing an API call to forgot-password. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ResetPasswordRequest = Initialize-ResetPasswordRequest -NewPassword "MyNewPassword" -ResetToken "MyResetToken" # ResetPasswordRequest |  (optional)

# Reset user password with temporary reset token
try {
    $Result = Reset-Password -ResetPasswordRequest $ResetPasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Reset-Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | [optional] 

### Return type

[**ResetPasswordResponse**](ResetPasswordResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

