# PpdmApiReference.PpdmApiReference\Api.ApplianceManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Smtp**](ApplianceManagementApi.md#New-Smtp) | **POST** /api/v2/smtp | Create SMTP configuration
[**Invoke-DeleteSmtp**](ApplianceManagementApi.md#Invoke-DeleteSmtp) | **DELETE** /api/v2/smtp/{id} | Delete SMTP configuration by ID
[**Deploy-Cdrs**](ApplianceManagementApi.md#Deploy-Cdrs) | **POST** /api/v2/cdrs-deployment | Starts to deploy the CDRS.
[**Get-Cdrs**](ApplianceManagementApi.md#Get-Cdrs) | **GET** /api/v2/cdrs-deployment | Get CDRS deployment Activity ID.
[**Get-CommonSetting**](ApplianceManagementApi.md#Get-CommonSetting) | **GET** /api/v2/common-settings/{id} | Get common settings by ID
[**Get-CommonSettings**](ApplianceManagementApi.md#Get-CommonSettings) | **GET** /api/v2/common-settings | Get all common settings
[**Get-Component**](ApplianceManagementApi.md#Get-Component) | **GET** /api/v2/components/{id} | Get component by ID
[**Get-Components**](ApplianceManagementApi.md#Get-Components) | **GET** /api/v2/components | Get all components
[**Get-ConfigStatus**](ApplianceManagementApi.md#Get-ConfigStatus) | **GET** /api/v2/configurations/{configurationId}/config-status | Get the progress of initial configuration
[**Get-Configuration**](ApplianceManagementApi.md#Get-Configuration) | **GET** /api/v2/configurations/{id} | Get configuration by ID
[**Get-Configurations**](ApplianceManagementApi.md#Get-Configurations) | **GET** /api/v2/configurations | Get all configurations
[**Get-Disk**](ApplianceManagementApi.md#Get-Disk) | **GET** /api/v2/disks/{id} | Get disk by ID
[**Get-Disks**](ApplianceManagementApi.md#Get-Disks) | **GET** /api/v2/disks | Get all disks in the appliance
[**Get-Features**](ApplianceManagementApi.md#Get-Features) | **GET** /api/v2/features | Get all features.
[**Get-HealthCheckResult**](ApplianceManagementApi.md#Get-HealthCheckResult) | **GET** /api/v2/health-checks/{id} | Get system health check result by ID
[**Get-HealthCheckTypes**](ApplianceManagementApi.md#Get-HealthCheckTypes) | **GET** /api/v2/health-check-types | Get all system health check types
[**Get-Node**](ApplianceManagementApi.md#Get-Node) | **GET** /api/v2/nodes/{id} | Get node by ID
[**Get-Nodes**](ApplianceManagementApi.md#Get-Nodes) | **GET** /api/v2/nodes | Get all nodes
[**Get-RestApiSetting**](ApplianceManagementApi.md#Get-RestApiSetting) | **GET** /api/v2/common-settings/REST_API_SETTING | Get strict validation setting
[**Get-Smtp**](ApplianceManagementApi.md#Get-Smtp) | **GET** /api/v2/smtp/{id} | Get SMTP configuration by ID
[**Get-Smtps**](ApplianceManagementApi.md#Get-Smtps) | **GET** /api/v2/smtp | Get all SMTP configuration
[**Get-Timezones**](ApplianceManagementApi.md#Get-Timezones) | **GET** /api/v2/timezones | Get all supported time zones or a specific time zone
[**Invoke-ManageComponent**](ApplianceManagementApi.md#Invoke-ManageComponent) | **POST** /api/v2/components/{id}/management | Manage CDRA component
[**Invoke-NetworkReferences**](ApplianceManagementApi.md#Invoke-NetworkReferences) | **GET** /api/v2/networks/{id}/references | Get network reference information by ID
[**Invoke-PatchFeaturesBatch**](ApplianceManagementApi.md#Invoke-PatchFeaturesBatch) | **PATCH** /api/v2/features-batch | Update features in batch.
[**Start-Configuration**](ApplianceManagementApi.md#Start-Configuration) | **PUT** /api/v2/configurations/{id} | Start the initial configuration
[**Test-Smtp**](ApplianceManagementApi.md#Test-Smtp) | **POST** /api/v2/smtp/test | Send a test email
[**Invoke-TriggerHealthCheck**](ApplianceManagementApi.md#Invoke-TriggerHealthCheck) | **POST** /api/v2/health-checks | Trigger a collection of system health checks
[**Update-CommonSetting**](ApplianceManagementApi.md#Update-CommonSetting) | **PUT** /api/v2/common-settings/{id} | Modify common settings by ID
[**Update-Component**](ApplianceManagementApi.md#Update-Component) | **PUT** /api/v2/components/{id} | Update component by ID
[**Update-Configuration**](ApplianceManagementApi.md#Update-Configuration) | **PATCH** /api/v2/configurations/{id} | Update time zone, network, osusers password, and lockbox passphrase.
[**Update-IPs**](ApplianceManagementApi.md#Update-IPs) | **PATCH** /api/v2/networks/{id}/ips | Update IP Pool.
[**Update-NetworkUsages**](ApplianceManagementApi.md#Update-NetworkUsages) | **PATCH** /api/v2/networks/{id}/usages | Update IP Usages.
[**Update-Node**](ApplianceManagementApi.md#Update-Node) | **PUT** /api/v2/nodes/{id} | Change node status
[**Update-OsUserPassword**](ApplianceManagementApi.md#Update-OsUserPassword) | **POST** /api/v2/os-user-password-reset | Reset OS User password
[**Update-RestApiSetting**](ApplianceManagementApi.md#Update-RestApiSetting) | **PUT** /api/v2/common-settings/REST_API_SETTING | Modify strict validation setting
[**Update-Routes**](ApplianceManagementApi.md#Update-Routes) | **PATCH** /api/v2/networks/{id}/routes | Update the network routes.
[**Update-Smtp**](ApplianceManagementApi.md#Update-Smtp) | **PUT** /api/v2/smtp/{id} | Update SMTP configuration by ID


<a id="New-Smtp"></a>
# **New-Smtp**
> Smtp New-Smtp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Smtp] <PSCustomObject><br>

Create SMTP configuration

Creates the SMTP configuration, which requires mailserver, mailFrom:admin(email), and mailRecipient:email. The email setup on the PowerProtect Data Manager System Settings area enables you to configure SMTP email server information to send emails for resetting local user passwords and customized alert notifications. Only one SMTP configuration is allowed.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Smtp = Initialize-Smtp -Id "MyId" -IsStartTls $false -MailFrom "MyMailFrom" -MailServer "MyMailServer" -Password "MyPassword" -Port 0 -Recipient "MyRecipient" -Username "MyUsername" # Smtp |  (optional)

# Create SMTP configuration
try {
    $Result = New-Smtp -Smtp $Smtp
} catch {
    Write-Host ("Exception occurred when calling New-Smtp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Smtp** | [**Smtp**](Smtp.md)|  | [optional] 

### Return type

[**Smtp**](Smtp.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSmtp"></a>
# **Invoke-DeleteSmtp**
> Smtp Invoke-DeleteSmtp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SMTP configuration by ID

Deletes the Simple Mail Transfer Protocol (SMTP) configuration by ID. No email is sent once SMTP configuration is deleted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | SMTP configuration ID.

# Delete SMTP configuration by ID
try {
    $Result = Invoke-DeleteSmtp -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSmtp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SMTP configuration ID. | 

### Return type

[**Smtp**](Smtp.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Deploy-Cdrs"></a>
# **Deploy-Cdrs**
> CdrsDeploymentActivity Deploy-Cdrs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CdrsDeployment] <PSCustomObject><br>

Starts to deploy the CDRS.

Starts to deploy the Cloud Disaster Recovery Server (CDRS) in the public cloud. CDRS can restore VMs to the public cloud. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CdrsDeployment = Initialize-CdrsDeployment -AdminPassword "MyAdminPassword" -CidrBlockIp "MyCidrBlockIp" -CloudTargetId "MyCloudTargetId" -DeleteExisting $false -Email "MyEmail" -MonitorPassword "MyMonitorPassword" -PrivateDeployment $false -SubnetId "MySubnetId" -VpcId "MyVpcId" # CdrsDeployment |  (optional)

# Starts to deploy the CDRS.
try {
    $Result = Deploy-Cdrs -CdrsDeployment $CdrsDeployment
} catch {
    Write-Host ("Exception occurred when calling Deploy-Cdrs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CdrsDeployment** | [**CdrsDeployment**](CdrsDeployment.md)|  | [optional] 

### Return type

[**CdrsDeploymentActivity**](CdrsDeploymentActivity.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Cdrs"></a>
# **Get-Cdrs**
> CdrsDeploymentActivity Get-Cdrs<br>

Get CDRS deployment Activity ID.

Retrieves the Cloud Disaster Recovery Server (CDRS) deployment activity ID. Provides the latest CDRS deployment activity ID, if it exists. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get CDRS deployment Activity ID.
try {
    $Result = Get-Cdrs
} catch {
    Write-Host ("Exception occurred when calling Get-Cdrs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CdrsDeploymentActivity**](CdrsDeploymentActivity.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CommonSetting"></a>
# **Get-CommonSetting**
> CommonSetting Get-CommonSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get common settings by ID

Retrieves the common settings by the ID. Common setting information contains the properties name, type and value. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Common settings ID.

# Get common settings by ID
try {
    $Result = Get-CommonSetting -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CommonSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Common settings ID. | 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CommonSettings"></a>
# **Get-CommonSettings**
> CommonSettings Get-CommonSettings<br>

Get all common settings

Retrieves all the available common settings. The returned listing contains information about the common setting name, type and value. The results sorted by the ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get all common settings
try {
    $Result = Get-CommonSettings
} catch {
    Write-Host ("Exception occurred when calling Get-CommonSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CommonSettings**](CommonSettings.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Component"></a>
# **Get-Component**
> SystemComponent Get-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get component by ID

Retrieves component with the specific ID. Component information includes the component ID, display name, service name, status, monitored, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Component ID.

# Get component by ID
try {
    $Result = Get-Component -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Component ID. | 

### Return type

[**SystemComponent**](SystemComponent.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Components"></a>
# **Get-Components**
> SystemComponents Get-Components<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all components

Retrieves all the available components. The returned listing includes the component ID, display name, service name, status, monitored, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all components
try {
    $Result = Get-Components -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Components: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**SystemComponents**](SystemComponents.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConfigStatus"></a>
# **Get-ConfigStatus**
> ConfigStatus Get-ConfigStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Get the progress of initial configuration

Retrieves the progress of the initial configuration. The configuration ID must first be obtained by running GET on the configurations API, which returns an array of configurations objects with which the PowerProtect Data Manager appliance can be configured. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ConfigurationId = "MyConfigurationId" # String | Configuration ID.

# Get the progress of initial configuration
try {
    $Result = Get-ConfigStatus -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Get-ConfigStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationId** | **String**| Configuration ID. | 

### Return type

[**ConfigStatus**](ConfigStatus.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Configuration"></a>
# **Get-Configuration**
> SystemConfiguration Get-Configuration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get configuration by ID

Retrieves a PowerProtect Data Manager appliance configuration by its ID. Running GET on this API returns an array of configurations objects with which the PowerProtect Data Manager appliance can be configured. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | id

# Get configuration by ID
try {
    $Result = Get-Configuration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Configuration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| id | 

### Return type

[**SystemConfiguration**](SystemConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Configurations"></a>
# **Get-Configurations**
> SystemConfigurations Get-Configurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all configurations

Retrieves all PowerProtect Data Manager appliance configurations. Running GET on this API endpoint returns an array of configurations objects with which the PowerProtect Data Manager appliance can be configured. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all configurations
try {
    $Result = Get-Configurations -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Configurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**SystemConfigurations**](SystemConfigurations.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Disk"></a>
# **Get-Disk**
> Disk Get-Disk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get disk by ID

Retrieves a disk by ID. The disk information includes the disk name, total size, available size, partition information, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Disk ID.

# Get disk by ID
try {
    $Result = Get-Disk -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Disk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Disk ID. | 

### Return type

[**Disk**](Disk.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Disks"></a>
# **Get-Disks**
> Disks Get-Disks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all disks in the appliance

Retrieves all disks in the appliance. The returned listing includes the disk name, total size, available size, partition information, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all disks in the appliance
try {
    $Result = Get-Disks -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Disks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Disks**](Disks.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Features"></a>
# **Get-Features**
> Features Get-Features<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all features.

Get all the available features. Returned listing includes the feature name, status, API rules, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all features.
try {
    $Result = Get-Features -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Features: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Features**](Features.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-HealthCheckResult"></a>
# **Get-HealthCheckResult**
> HealthCheck Get-HealthCheckResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get system health check result by ID

Get system health check result by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Health check ID

# Get system health check result by ID
try {
    $Result = Get-HealthCheckResult -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-HealthCheckResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Health check ID | 

### Return type

[**HealthCheck**](HealthCheck.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-HealthCheckTypes"></a>
# **Get-HealthCheckTypes**
> HealthCheckTypes Get-HealthCheckTypes<br>

Get all system health check types

Get all system health check types. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get all system health check types
try {
    $Result = Get-HealthCheckTypes
} catch {
    Write-Host ("Exception occurred when calling Get-HealthCheckTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheckTypes**](HealthCheckTypes.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Node"></a>
# **Get-Node**
> Node Get-Node<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get node by ID

Retrieves a node on the appliance with the specified ID. The node has information about the appliance status, subcomponents in the appliance, uptime, version, and other system details. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Node ID.

# Get node by ID
try {
    $Result = Get-Node -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Node: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Node ID. | 

### Return type

[**Node**](Node.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Nodes"></a>
# **Get-Nodes**
> Nodes Get-Nodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all nodes

Retrieves all nodes on the appliance. Each node has information about the appliance status, subcomponents in the appliance, uptime, version, and other system details. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all nodes
try {
    $Result = Get-Nodes -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Nodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Nodes**](Nodes.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RestApiSetting"></a>
# **Get-RestApiSetting**
> CommonSetting Get-RestApiSetting<br>

Get strict validation setting

Retrieves the current strict REST API validation setting. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get strict validation setting
try {
    $Result = Get-RestApiSetting
} catch {
    Write-Host ("Exception occurred when calling Get-RestApiSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Smtp"></a>
# **Get-Smtp**
> Smtp Get-Smtp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SMTP configuration by ID

Retrieves Simple Mail Transfer Protocol (SMTP) configuration by the specified ID. The returned information contains the SMTP ID, mailserver, mailFrom, mailRecipient, and port. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | SMTP configuration ID.

# Get SMTP configuration by ID
try {
    $Result = Get-Smtp -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Smtp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SMTP configuration ID. | 

### Return type

[**Smtp**](Smtp.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Smtps"></a>
# **Get-Smtps**
> Smtps Get-Smtps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all SMTP configuration

Retrieves Simple Mail Transfer Protocol (SMTP) configuration. Returns the list of SMTP setup in the appliance. Returns only one SMTP configuration. Returns ID, mailserver, mailFrom, mailRecipient, and port.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all SMTP configuration
try {
    $Result = Get-Smtps -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Smtps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Smtps**](Smtps.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Timezones"></a>
# **Get-Timezones**
> Timezones Get-Timezones<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timezone] <String><br>

Get all supported time zones or a specific time zone

Retrieves all the supported time zones or a specific time zone if provided. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Timezone = "MyTimezone" # String | Specific Time Zone ID (optional) (optional)

# Get all supported time zones or a specific time zone
try {
    $Result = Get-Timezones -Timezone $Timezone
} catch {
    Write-Host ("Exception occurred when calling Get-Timezones: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Timezone** | **String**| Specific Time Zone ID (optional) | [optional] 

### Return type

[**Timezones**](Timezones.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ManageComponent"></a>
# **Invoke-ManageComponent**
> Id Invoke-ManageComponent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CDRAComponentStartup] <PSCustomObject><br>

Manage CDRA component

Manages the Cloud Disaster Recovery Appliance (CDRA) component. Calling this API may increase additional resources like CPU and memory. For details, see the PowerProtect Data Manager User Guide. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID
$CDRAComponentStartup = Initialize-CDRAComponentStartup -AlreadyManaged $false -ExistingJobID "MyExistingJobID" -Operation "MyOperation" # CDRAComponentStartup |  (optional)

# Manage CDRA component
try {
    $Result = Invoke-ManageComponent -Id $Id -CDRAComponentStartup $CDRAComponentStartup
} catch {
    Write-Host ("Exception occurred when calling Invoke-ManageComponent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID | 
 **CDRAComponentStartup** | [**CDRAComponentStartup**](CDRAComponentStartup.md)|  | [optional] 

### Return type

[**Id**](Id.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-NetworkReferences"></a>
# **Invoke-NetworkReferences**
> VLANReferenceDetailsWrapper Invoke-NetworkReferences<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get network reference information by ID

Get the network usage information that is based on the specified ID to determine whether a VLAN is in use. The network usage information includes the total number of VLANs in use, the number of VLANs used by the assets, the number of VLANs used by policies, and the network name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Get network reference information by ID
try {
    $Result = Invoke-NetworkReferences -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NetworkReferences: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**VLANReferenceDetailsWrapper**](VLANReferenceDetailsWrapper.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchFeaturesBatch"></a>
# **Invoke-PatchFeaturesBatch**
> FeaturesBatchResponses Invoke-PatchFeaturesBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AutoEnableChildFeatures] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeaturesBatchRequests] <PSCustomObject><br>

Update features in batch.

Update features in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$AutoEnableChildFeatures = $true # Boolean | If set to true (the default setting), the enabled feature automatically enables sub-features. (optional)
$APIFilter = Initialize-APIFilter -Name "MyName" -Type "MyType" -Value "MyValue"
$APIRule = Initialize-APIRule -Filters $APIFilter -UriPattern "MyUriPattern"

$JobRule = Initialize-JobRule -Field "MyField" -Value "MyValue"

$Toggler = Initialize-Toggler -Filters $APIFilter -Type "MyType" -UriPattern "MyUriPattern"

"PLATFORM"$Feature = Initialize-Feature -ApiRules $APIRule -BoundService "MyBoundService" -Dependencies "MyDependencies" -Id "MyId" -JobRules $JobRule -Name "MyName" -Parents "MyParents" -Status "ENABLED" -Togglers $Toggler -Unavailable 

$APIFilter = Initialize-APIFilter -Name "MyName" -Type "MyType" -Value "MyValue"
$APIRule = Initialize-APIRule -Filters $APIFilter -UriPattern "MyUriPattern"

$JobRule = Initialize-JobRule -Field "MyField" -Value "MyValue"

$Toggler = Initialize-Toggler -Filters $APIFilter -Type "MyType" -UriPattern "MyUriPattern"

"PLATFORM"

$FeatureRequest = Initialize-FeatureRequest -Body $Feature -Id "MyId"

$FeaturesBatchRequests = Initialize-FeaturesBatchRequests -Requests $FeatureRequest # FeaturesBatchRequests |  (optional)

# Update features in batch.
try {
    $Result = Invoke-PatchFeaturesBatch -AutoEnableChildFeatures $AutoEnableChildFeatures -FeaturesBatchRequests $FeaturesBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchFeaturesBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AutoEnableChildFeatures** | **Boolean**| If set to true (the default setting), the enabled feature automatically enables sub-features. | [optional] 
 **FeaturesBatchRequests** | [**FeaturesBatchRequests**](FeaturesBatchRequests.md)|  | [optional] 

### Return type

[**FeaturesBatchResponses**](FeaturesBatchResponses.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-Configuration"></a>
# **Start-Configuration**
> SystemConfiguration Start-Configuration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SystemConfiguration] <PSCustomObject><br>

Start the initial configuration

The initial configuration request is allowed only when the appliance state is PENDING or RESTORE. You can only perform the request once. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Configuration ID sent in request.
$Outbound = Initialize-Outbound -Destination "MyDestination" -Port "MyPort" -Protocol "TCP" -Rule "ACCEPT" -UsedBy "MyUsedBy"
$Firewall = Initialize-Firewall -Outbounds $Outbound

$Lockbox = Initialize-Lockbox -LastUpdatedTime "MyLastUpdatedTime" -Name "MyName" -NewPassphrase "MyNewPassphrase" -Passphrase "MyPassphrase"
$SystemConfigurationNetwork = Initialize-SystemConfigurationNetwork -DnsServers "MyDnsServers" -Fqdn "MyFqdn" -Gateway "MyGateway" -GatewayIpv6 "MyGatewayIpv6" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpAddressFamily "MyIpAddressFamily" -IpAddressIpv6 "MyIpAddressIpv6" -NetMask "MyNetMask" -NslookupSuccess $false -Prefix "MyPrefix" -SearchDomains "MySearchDomains"
$OsUser = Initialize-OsUser -Description "MyDescription" -ExpirationDays 0 -NewPassword "MyNewPassword" -NumberOfDaysToExpire 0 -Password "MyPassword" -RemainingExpirationDays 0 -UserName "MyUserName"
$SystemConfiguration = Initialize-SystemConfiguration -ApplicationUserPassword "MyApplicationUserPassword" -AutoSupport $false -ConfigType "MyConfigType" -DeployedPlatform "AZURE" -Firewall $Firewall -GettingStartedCompleted $false -Id "MyId" -IntegratedStorageSecuritySetupCompleted $false -Lockbox $Lockbox -Networks $SystemConfigurationNetwork -NodeId "MyNodeId" -NtpServers "MyNtpServers" -OsUsers $OsUser -Psnt "MyPsnt" -TimeZone "MyTimeZone" -TimeZoneUi "MyTimeZoneUi" # SystemConfiguration |  (optional)

# Start the initial configuration
try {
    $Result = Start-Configuration -Id $Id -SystemConfiguration $SystemConfiguration
} catch {
    Write-Host ("Exception occurred when calling Start-Configuration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Configuration ID sent in request. | 
 **SystemConfiguration** | [**SystemConfiguration**](SystemConfiguration.md)|  | [optional] 

### Return type

[**SystemConfiguration**](SystemConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-Smtp"></a>
# **Test-Smtp**
> void Test-Smtp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmtpTest] <PSCustomObject><br>

Send a test email

Sends a test email. Requires mailRecipient and mailserver. Includes mailFrom: email. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SmtpTest = Initialize-SmtpTest -MailFrom "MyMailFrom" -MailServer "MyMailServer" -Password "MyPassword" -Port 0 -Recipient "MyRecipient" -Username "MyUsername" # SmtpTest |  (optional)

# Send a test email
try {
    $Result = Test-Smtp -SmtpTest $SmtpTest
} catch {
    Write-Host ("Exception occurred when calling Test-Smtp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmtpTest** | [**SmtpTest**](SmtpTest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TriggerHealthCheck"></a>
# **Invoke-TriggerHealthCheck**
> HealthCheck Invoke-TriggerHealthCheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HealthCheckRequest] <PSCustomObject><br>

Trigger a collection of system health checks

Trigger a collection of system health checks. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RequestedCheck = Initialize-RequestedCheck -GroupName "MyGroupName" -Name "MyName"
$HealthCheckRequest = Initialize-HealthCheckRequest -EnableActivity $false -EnableAlert $false -RequestedChecks $RequestedCheck -Source "DEFAULT" # HealthCheckRequest |  (optional)

# Trigger a collection of system health checks
try {
    $Result = Invoke-TriggerHealthCheck -HealthCheckRequest $HealthCheckRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-TriggerHealthCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HealthCheckRequest** | [**HealthCheckRequest**](HealthCheckRequest.md)|  | [optional] 

### Return type

[**HealthCheck**](HealthCheck.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CommonSetting"></a>
# **Update-CommonSetting**
> CommonSetting Update-CommonSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Modify common settings by ID

Modifies the common settings by ID. The common setting information contains the property name, type and value. Only the value can be updated. Type includes BOOLEAN, STRING, LONG, DOUBLE, INSTANT, INTEGER, LIST. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Common settings ID sent in request.
$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Modify common settings by ID
try {
    $Result = Update-CommonSetting -Id $Id -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-CommonSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Common settings ID sent in request. | 
 **CommonSetting** | [**CommonSetting**](CommonSetting.md)|  | [optional] 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Component"></a>
# **Update-Component**
> SystemComponent Update-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SystemComponent] <PSCustomObject><br>

Update component by ID

Updates a component by ID. Only status and monitored can be changed. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Component ID.
$Logging = Initialize-Logging -Configurable $false -LogLocation "MyLogLocation"
$SystemComponent = Initialize-SystemComponent -ComponentDisplayName "MyComponentDisplayName" -ComponentServiceName "MyComponentServiceName" -ComponentType "MyComponentType" -Id "MyId" -Logging $Logging -Monitored $false -Status "INITIALIZING" # SystemComponent |  (optional)

# Update component by ID
try {
    $Result = Update-Component -Id $Id -SystemComponent $SystemComponent
} catch {
    Write-Host ("Exception occurred when calling Update-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Component ID. | 
 **SystemComponent** | [**SystemComponent**](SystemComponent.md)|  | [optional] 

### Return type

[**SystemComponent**](SystemComponent.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Configuration"></a>
# **Update-Configuration**
> SystemConfiguration Update-Configuration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceNetworkReconfiguration] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SystemConfiguration] <PSCustomObject><br>

Update time zone, network, osusers password, and lockbox passphrase.

You can change only one value at a time. For example, to change the time zone and the lockbox passphrase, you require two separate requests. To update the network, first put the appliance in maintenance mode. Updating the network configuration requires a system reboot. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Configuration ID sent in request.
$ForceNetworkReconfiguration = $true # Boolean | If set to true, the request will force update the network configuration. (optional)
$Outbound = Initialize-Outbound -Destination "MyDestination" -Port "MyPort" -Protocol "TCP" -Rule "ACCEPT" -UsedBy "MyUsedBy"
$Firewall = Initialize-Firewall -Outbounds $Outbound

$Lockbox = Initialize-Lockbox -LastUpdatedTime "MyLastUpdatedTime" -Name "MyName" -NewPassphrase "MyNewPassphrase" -Passphrase "MyPassphrase"
$SystemConfigurationNetwork = Initialize-SystemConfigurationNetwork -DnsServers "MyDnsServers" -Fqdn "MyFqdn" -Gateway "MyGateway" -GatewayIpv6 "MyGatewayIpv6" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpAddressFamily "MyIpAddressFamily" -IpAddressIpv6 "MyIpAddressIpv6" -NetMask "MyNetMask" -NslookupSuccess $false -Prefix "MyPrefix" -SearchDomains "MySearchDomains"
$OsUser = Initialize-OsUser -Description "MyDescription" -ExpirationDays 0 -NewPassword "MyNewPassword" -NumberOfDaysToExpire 0 -Password "MyPassword" -RemainingExpirationDays 0 -UserName "MyUserName"
$SystemConfiguration = Initialize-SystemConfiguration -ApplicationUserPassword "MyApplicationUserPassword" -AutoSupport $false -ConfigType "MyConfigType" -DeployedPlatform "AZURE" -Firewall $Firewall -GettingStartedCompleted $false -Id "MyId" -IntegratedStorageSecuritySetupCompleted $false -Lockbox $Lockbox -Networks $SystemConfigurationNetwork -NodeId "MyNodeId" -NtpServers "MyNtpServers" -OsUsers $OsUser -Psnt "MyPsnt" -TimeZone "MyTimeZone" -TimeZoneUi "MyTimeZoneUi" # SystemConfiguration |  (optional)

# Update time zone, network, osusers password, and lockbox passphrase.
try {
    $Result = Update-Configuration -Id $Id -ForceNetworkReconfiguration $ForceNetworkReconfiguration -SystemConfiguration $SystemConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-Configuration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Configuration ID sent in request. | 
 **ForceNetworkReconfiguration** | **Boolean**| If set to true, the request will force update the network configuration. | [optional] 
 **SystemConfiguration** | [**SystemConfiguration**](SystemConfiguration.md)|  | [optional] 

### Return type

[**SystemConfiguration**](SystemConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IPs"></a>
# **Update-IPs**
> Network Update-IPs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServerType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VmNetworkName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IpAddressFamily] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetworkIps] <PSCustomObject><br>

Update IP Pool.

Expand IP pools for the specified server type. Only IP addresses can be changed. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$ServerType = "MyServerType" # String | The type of the server
$VmNetworkName = "MyVmNetworkName" # String | The vmNetworkName of the network (optional)
$IpAddressFamily = "MyIpAddressFamily" # String | The IP address family of proxy or search (optional)
$NetworkIps = Initialize-NetworkIps -Ips "MyIps" -Ipv6s "MyIpv6s" # NetworkIps |  (optional)

# Update IP Pool.
try {
    $Result = Update-IPs -Id $Id -ServerType $ServerType -VmNetworkName $VmNetworkName -IpAddressFamily $IpAddressFamily -NetworkIps $NetworkIps
} catch {
    Write-Host ("Exception occurred when calling Update-IPs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **ServerType** | **String**| The type of the server | 
 **VmNetworkName** | **String**| The vmNetworkName of the network | [optional] 
 **IpAddressFamily** | **String**| The IP address family of proxy or search | [optional] 
 **NetworkIps** | [**NetworkIps**](NetworkIps.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-NetworkUsages"></a>
# **Update-NetworkUsages**
> Network Update-NetworkUsages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Update IP Usages.

Update VLAN network usages. For patch, only id and usages fields are needed. And only changed usage in usages are needed. All other fields will be ignored if passed in. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Update IP Usages.
try {
    $Result = Update-NetworkUsages -Id $Id -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Update-NetworkUsages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Network** | [**Network**](Network.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Node"></a>
# **Update-Node**
> Node Update-Node<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <PSCustomObject><br>

Change node status

Updates the status of the appliance to any of the following states: MAINTENANCE, RESTORE, QUIESCE, OPERATIONAL. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Node ID sent in request.
$SubComponent = Initialize-SubComponent -Name "VM_DIRECT" -Version "MyVersion"
$Restrictions = Initialize-Restrictions -Name "noScheduledStorageAccess" -Value "MyValue"
$Node = Initialize-Node -Components $SubComponent -DisplayVersion "MyDisplayVersion" -Id "MyId" -LastNodeStatusUpdated (Get-Date) -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -PowerProtectModel "MyPowerProtectModel" -PowerProtectVersion "MyPowerProtectVersion" -Restrictions $Restrictions -Status "INITIALIZING" -StatusDescription "MyStatusDescription" -SystemId "MySystemId" -UptimeInDays "MyUptimeInDays" -Version "MyVersion" # Node |  (optional)

# Change node status
try {
    $Result = Update-Node -Id $Id -Node $Node
} catch {
    Write-Host ("Exception occurred when calling Update-Node: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Node ID sent in request. | 
 **Node** | [**Node**](Node.md)|  | [optional] 

### Return type

[**Node**](Node.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OsUserPassword"></a>
# **Update-OsUserPassword**
> SystemCollectionsHashtable Update-OsUserPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResetOsUserPasswordRequest] <PSCustomObject><br>

Reset OS User password

Reset the OS user password. The root password must be active (not expired). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ResetOsUserPasswordRequest = Initialize-ResetOsUserPasswordRequest -NewPassword "MyNewPassword" -UserName "MyUserName" # ResetOsUserPasswordRequest |  (optional)

# Reset OS User password
try {
    $Result = Update-OsUserPassword -ResetOsUserPasswordRequest $ResetOsUserPasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Update-OsUserPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResetOsUserPasswordRequest** | [**ResetOsUserPasswordRequest**](ResetOsUserPasswordRequest.md)|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-RestApiSetting"></a>
# **Update-RestApiSetting**
> CommonSetting Update-RestApiSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Modify strict validation setting

Modify the current strict REST API validation setting. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Modify strict validation setting
try {
    $Result = Update-RestApiSetting -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-RestApiSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-Routes"></a>
# **Update-Routes**
> Network Update-Routes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Update the network routes.

Update VLAN routes. For patch, only id and routes fields are needed. Routes field needs to contain all routes. All other fields will be ignored if passed in. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Update the network routes.
try {
    $Result = Update-Routes -Id $Id -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Update-Routes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Network** | [**Network**](Network.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Smtp"></a>
# **Update-Smtp**
> Smtp Update-Smtp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Smtp] <PSCustomObject><br>

Update SMTP configuration by ID

Updates SMTP configuration by ID. You can update the mailserver, mailFrom, and mailRecipient. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | SMTP configuration ID sent in request.
$Smtp = Initialize-Smtp -Id "MyId" -IsStartTls $false -MailFrom "MyMailFrom" -MailServer "MyMailServer" -Password "MyPassword" -Port 0 -Recipient "MyRecipient" -Username "MyUsername" # Smtp |  (optional)

# Update SMTP configuration by ID
try {
    $Result = Update-Smtp -Id $Id -Smtp $Smtp
} catch {
    Write-Host ("Exception occurred when calling Update-Smtp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SMTP configuration ID sent in request. | 
 **Smtp** | [**Smtp**](Smtp.md)|  | [optional] 

### Return type

[**Smtp**](Smtp.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

