# PpdmApiReference.PpdmApiReference\Api.UpgradeApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-Precheck**](UpgradeApi.md#Stop-Precheck) | **POST** /api/v2/upgrade-packages/{id}/precheck-cancellation | Cancel the precheck
[**Stop-Upgrade**](UpgradeApi.md#Stop-Upgrade) | **POST** /api/v2/upgrade-packages/{id}/upgrade-cancellation | Cancel the upgrade
[**Invoke-DeleteUpgradePackage**](UpgradeApi.md#Invoke-DeleteUpgradePackage) | **DELETE** /api/v2/upgrade-packages/{id} | Delete an uploaded upgrade package by ID
[**Get-UpgradePackage**](UpgradeApi.md#Get-UpgradePackage) | **GET** /api/v2/upgrade-packages/{id} | Get upgrade package by ID
[**Get-UpgradePackages**](UpgradeApi.md#Get-UpgradePackages) | **GET** /api/v2/upgrade-packages | Get a list of upgrade packages
[**Invoke-PrecheckUpgradePackage**](UpgradeApi.md#Invoke-PrecheckUpgradePackage) | **POST** /api/v2/upgrade-packages/{id}/precheck | Precheck upgrade package by ID
[**Invoke-RevertUpgradePackage**](UpgradeApi.md#Invoke-RevertUpgradePackage) | **POST** /api/v2/upgrade-packages/{id}/revert | Revert hotfix upgrade package
[**Update-UpgradePackage**](UpgradeApi.md#Update-UpgradePackage) | **PUT** /api/v2/upgrade-packages/{id} | Install the upgrade package
[**Invoke-UploadUpgradePackage**](UpgradeApi.md#Invoke-UploadUpgradePackage) | **POST** /api/v2/upgrade-packages | Upload an upgrade package to the appliance


<a id="Stop-Precheck"></a>
# **Stop-Precheck**
> ErrorMessage Stop-Precheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Cancel the precheck

Cancel the precheck for an upgrade package by specifying its ID. Use this API when the upgrade package is stopped in the PROCESSING state. When the cancellation completes, the upgrade package state changes to PRECHECK_FAILED. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.

# Cancel the precheck
try {
    $Result = Stop-Precheck -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-Precheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 

### Return type

[**ErrorMessage**](ErrorMessage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-Upgrade"></a>
# **Stop-Upgrade**
> ErrorMessage Stop-Upgrade<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Cancel the upgrade

Cancel the upgrade for an upgrade package by specifying its ID. Use this API when the upgrade package is stopped in the INSTALLED_CORE state. When cancellation is complete, the upgrade package state changes to INSTALLED_WITH_ERRORS. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.

# Cancel the upgrade
try {
    $Result = Stop-Upgrade -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-Upgrade: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 

### Return type

[**ErrorMessage**](ErrorMessage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteUpgradePackage"></a>
# **Invoke-DeleteUpgradePackage**
> ErrorMessage Invoke-DeleteUpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an uploaded upgrade package by ID

Deletes an upgrade package that is not installing nor has been installed. Packages in the processing state cannot be deleted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.

# Delete an uploaded upgrade package by ID
try {
    $Result = Invoke-DeleteUpgradePackage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 

### Return type

[**ErrorMessage**](ErrorMessage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UpgradePackage"></a>
# **Get-UpgradePackage**
> UpgradePackage Get-UpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get upgrade package by ID

Retrieves the details of an upgrade package by the specified ID, including its state, name, installed date, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.

# Get upgrade package by ID
try {
    $Result = Get-UpgradePackage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-UpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 

### Return type

[**UpgradePackage**](UpgradePackage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UpgradePackages"></a>
# **Get-UpgradePackages**
> UpgradePackages Get-UpgradePackages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get a list of upgrade packages

Retrieves a list of all upgrade packages. This API call checks the upgrade history of the system. If the system has been upgraded multiple times, the list includes the installed upgrade packages. At any time, only one package that has not been installed can exist. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get a list of upgrade packages
try {
    $Result = Get-UpgradePackages -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-UpgradePackages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**UpgradePackages**](UpgradePackages.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PrecheckUpgradePackage"></a>
# **Invoke-PrecheckUpgradePackage**
> UpgradePackage Invoke-PrecheckUpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Precheck upgrade package by ID

Enables you to precheck an upgrade package by the specified ID. The precheck verifies that all components are ready for upgrade. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.

# Precheck upgrade package by ID
try {
    $Result = Invoke-PrecheckUpgradePackage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-PrecheckUpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 

### Return type

[**UpgradePackage**](UpgradePackage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RevertUpgradePackage"></a>
# **Invoke-RevertUpgradePackage**
> RevertResponse Invoke-RevertUpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Revert hotfix upgrade package

Revert a hotfix upgrade package. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Revert hotfix upgrade package
try {
    $Result = Invoke-RevertUpgradePackage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-RevertUpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**RevertResponse**](RevertResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-UpgradePackage"></a>
# **Update-UpgradePackage**
> ErrorMessage Update-UpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceUpgrade] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpgradePackage] <PSCustomObject><br>

Install the upgrade package

Installs upgrade package only if the state of the upgrade package is AVAILABLE or FAILED. To install the upgrade package, set state=INSTALLED in the PUT request body. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The specified package ID for the upgrade.
$ForceUpgrade = "MyForceUpgrade" # String | Indicates whether to force upgrade the PowerProtect Data Manager. (optional) (default to "true")
$CertificateDetailsMap = Initialize-CertificateDetailsMap -IssuerDN "MyIssuerDN" -Md5 "MyMd5" -NotAfter "MyNotAfter" -NotBefore "MyNotBefore" -PublicKey "MyPublicKey" -PublicKeyExponent "MyPublicKeyExponent" -PublicKeyModulus "MyPublicKeyModulus" -PublicKeySize "MyPublicKeySize" -SerialNumber "MySerialNumber" -Sha1 "MySha1" -Sha256 "MySha256" -SignatureAlgorithmName "MySignatureAlgorithmName" -SignatureAlgorithmOID "MySignatureAlgorithmOID" -SubjectDN "MySubjectDN" -Version "MyVersion"
$UpgradePackageEula = Initialize-UpgradePackageEula -ProductEulaAccepted $false -ProductEulaChanged $false -TelemetryEulaAccepted $false -TelemetryEulaChanged $false
$PreUpgradeHealthCheck = Initialize-PreUpgradeHealthCheck -EndTime (Get-Date) -Initiated "UPGRADE" -StartTime (Get-Date)

$MessageDetails = Initialize-MessageDetails -Message "MyMessage" -MessageArgs "MyMessageArgs" -MessageID "MyMessageID" -Reason "MyReason" -Remediation "MyRemediation"
$SubComponentDetails = Initialize-SubComponentDetails -Attributes @{ key_example = "MyInner" } -ComponentName "MyComponentName" -DateInstalled (Get-Date) -DisplayName "MyDisplayName" -ErrorMessage "MyErrorMessage" -FileName "MyFileName" -FromVersion "MyFromVersion" -MinimumVersion "MyMinimumVersion" -Progress 0 -SkipUpgrade $false -Skippable "NOT_SUPPORTED" -SkippableDetails "MySkippableDetails" -StateChangedTime (Get-Date) -SubComponentUpgradeState "PROCESSING" -UpgradeError $MessageDetails -UpgradeMode "DU" -UpgradeStarted (Get-Date) -UpgradeVersion "MyUpgradeVersion"

$ValidationDetail = Initialize-ValidationDetail -Message "MyMessage" -MessageDetails $MessageDetails -ResultType "INFO" -SubComponent "MySubComponent" -ValidateTime (Get-Date) -ValidationName "MyValidationName"

$UpgradePackage = Initialize-UpgradePackage -ActivityId "MyActivityId" -Category "ACTIVE" -CertificateDetailsMap $CertificateDetailsMap -CertificateTrustedByUser $false -Criticality "URGENT" -DateInstalled (Get-Date) -Description "MyDescription" -ErrorMessage "MyErrorMessage" -Eula $UpgradePackageEula -ExternalId "MyExternalId" -FileName "MyFileName" -FromVersion "MyFromVersion" -Id "MyId" -InitiationType "CUSTOMER" -LockboxPassphrase "MyLockboxPassphrase" -LockboxResetRequired $false -MadeAvailable (Get-Date) -MaintenanceUpgrade $false -MinimumVersion "MyMinimumVersion" -Name "MyName" -PackageDelivery "UPLOAD" -PackageVersion "MyPackageVersion" -PreUpgradeHealthCheck $PreUpgradeHealthCheck -RebootRequired $false -ReleaseNotesLink "MyReleaseNotesLink" -RevertSupported $false -SizeInBytes 0 -SkipSnapshot $false -State "PROCESSING" -StateChangedTime (Get-Date) -SubComponentDetails $SubComponentDetails -Type "RELEASE" -UpgradeError $MessageDetails -UpgradeMode "DU" -UpgradeStarted (Get-Date) -UpgradeToken "MyUpgradeToken" -ValidationDetails $ValidationDetail # UpgradePackage |  (optional)

# Install the upgrade package
try {
    $Result = Update-UpgradePackage -Id $Id -ForceUpgrade $ForceUpgrade -UpgradePackage $UpgradePackage
} catch {
    Write-Host ("Exception occurred when calling Update-UpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The specified package ID for the upgrade. | 
 **ForceUpgrade** | **String**| Indicates whether to force upgrade the PowerProtect Data Manager. | [optional] [default to &quot;true&quot;]
 **UpgradePackage** | [**UpgradePackage**](UpgradePackage.md)|  | [optional] 

### Return type

[**ErrorMessage**](ErrorMessage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UploadUpgradePackage"></a>
# **Invoke-UploadUpgradePackage**
> ErrorMessage Invoke-UploadUpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload an upgrade package to the appliance

Uploads only one upgrade package at a time. To upload another, install or delete the existing upgrade package. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$File =  # System.IO.FileInfo | Upgrade package file to be uploaded. (optional)

# Upload an upgrade package to the appliance
try {
    $Result = Invoke-UploadUpgradePackage -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadUpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| Upgrade package file to be uploaded. | [optional] 

### Return type

[**ErrorMessage**](ErrorMessage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

