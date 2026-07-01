# PpdmApiReference.PpdmApiReference\Api.InventorySourceManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-InventorySource**](InventorySourceManagementApi.md#New-InventorySource) | **POST** /api/v2/inventory-sources | Create an inventory source
[**Invoke-DeleteInventorySource**](InventorySourceManagementApi.md#Invoke-DeleteInventorySource) | **DELETE** /api/v2/inventory-sources/{id} | Delete an inventory source by ID
[**Get-InventorySource**](InventorySourceManagementApi.md#Get-InventorySource) | **GET** /api/v2/inventory-sources/{id} | Get an inventory source by ID
[**Get-InventorySources**](InventorySourceManagementApi.md#Get-InventorySources) | **GET** /api/v2/inventory-sources | Get all inventory sources
[**Invoke-PatchUpdateInventorySource**](InventorySourceManagementApi.md#Invoke-PatchUpdateInventorySource) | **PATCH** /api/v2/inventory-sources/{id} | Partially update an inventory source
[**Update-InventorySource**](InventorySourceManagementApi.md#Update-InventorySource) | **PUT** /api/v2/inventory-sources/{id} | Update an inventory source by ID


<a id="New-InventorySource"></a>
# **New-InventorySource**
> InventorySource New-InventorySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InventorySource] <PSCustomObject><br>

Create an inventory source

Creates an inventory source. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$InventorySourceEmbedded = Initialize-InventorySourceEmbedded -Location $EmbeddedIdName

$Id = Initialize-Id -Id "MyId"

$InventorySourceIpRanges = Initialize-InventorySourceIpRanges -Max "MyMax" -Min "MyMin"

$Netmask = Initialize-Netmask -Notation "CIDR" -Value "MyValue"
$InventorySourceSubnetworks = Initialize-InventorySourceSubnetworks -IpAddress "MyIpAddress" -Netmask $Netmask

$InventorySourceIpRules = Initialize-InventorySourceIpRules -IpList "MyIpList" -IpRanges $InventorySourceIpRanges -Subnetworks $InventorySourceSubnetworks

$Rman = Initialize-Rman -RmanCredsId "MyRmanCredsId" -RmanTnsAlias "MyRmanTnsAlias" -RmanTnsLocation "MyRmanTnsLocation"
$InventorySourceOracle = Initialize-InventorySourceOracle -Rman $Rman -TnsAlias "MyTnsAlias" -TnsLocation "MyTnsLocation"

$InventorySourceCustomAppGroup = Initialize-InventorySourceCustomAppGroup -DefaultGroup $false -IpRules $InventorySourceIpRules -Oracle $InventorySourceOracle -UnapprovedHostCount 0

$InventorySourceVcmAttributes = Initialize-InventorySourceVcmAttributes -DdboostUserCredsId "MyDdboostUserCredsId" -External $false
$InventorySourceCustomStorageGroup = Initialize-InventorySourceCustomStorageGroup -VcmAttributes $InventorySourceVcmAttributes

$InventorySourceDataDomain = Initialize-InventorySourceDataDomain -MtreeReplicationConnectHost "MyMtreeReplicationConnectHost"

$InventorySourceK8sConfigurationsInner = Initialize-InventorySourceK8sConfigurationsInner -Key "MyKey" -Type "MyType" -Value "MyValue"
$InventorySourceK8s = Initialize-InventorySourceK8s -Configurations $InventorySourceK8sConfigurationsInner -ControllerVersion "MyControllerVersion" -DistributionType "MyDistributionType" -RolloutAt "MyRolloutAt" -RolloutStatus "PENDING" -UpdateMode "AUTO" -VCenterId "MyVCenterId"

$InventorySourceNas = Initialize-InventorySourceNas -Protocol "NFS" -StorageApplianceName "MyStorageApplianceName"
$InventorySourcePpdm = Initialize-InventorySourcePpdm -Direction "INCOMING" -Enabled $false -SystemId "MySystemId"
$InventorySourceVCenter = Initialize-InventorySourceVCenter -AssetSource $false -CloudType "NONE" -DisableAutoSoftwarePackagesManage $false -DisableProxyAutoSoftwarePackagesManage $false -Hosting $false -Internal $false -VSphereUiIntegration $false
$InventorySourceDetails = Initialize-InventorySourceDetails -CustomAppGroup $InventorySourceCustomAppGroup -CustomStorageGroup $InventorySourceCustomStorageGroup -DataDomain $InventorySourceDataDomain -K8s $InventorySourceK8s -Model "MyModel" -Nas $InventorySourceNas -Ppdm $InventorySourcePpdm -VCenter $InventorySourceVCenter

$InventorySourceExternalTenant = Initialize-InventorySourceExternalTenant -Id "MyId" -Name "MyName"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
"DISCOVERY"$InventorySource = Initialize-InventorySource -Embedded $InventorySourceEmbedded -Address "MyAddress" -Credentials $Id -Details $InventorySourceDetails -ExternalTenant $InventorySourceExternalTenant -Id "MyId" -LastDiscovered (Get-Date) -LastDiscoveryResult $DiscoveryResult -LastDiscoveryTaskId "MyLastDiscoveryTaskId" -VarLocal $false -MultiFactorAuthenticationEnabled $false -Name "MyName" -Port 0 -Purpose "NAS_SHARE" -Type "APP_HOST" -UnsupportedFeatures 

$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$InventorySourceEmbedded = Initialize-InventorySourceEmbedded -Location $EmbeddedIdName

$Id = Initialize-Id -Id "MyId"

$InventorySourceIpRanges = Initialize-InventorySourceIpRanges -Max "MyMax" -Min "MyMin"

$Netmask = Initialize-Netmask -Notation "CIDR" -Value "MyValue"
$InventorySourceSubnetworks = Initialize-InventorySourceSubnetworks -IpAddress "MyIpAddress" -Netmask $Netmask

$InventorySourceIpRules = Initialize-InventorySourceIpRules -IpList "MyIpList" -IpRanges $InventorySourceIpRanges -Subnetworks $InventorySourceSubnetworks

$Rman = Initialize-Rman -RmanCredsId "MyRmanCredsId" -RmanTnsAlias "MyRmanTnsAlias" -RmanTnsLocation "MyRmanTnsLocation"
$InventorySourceOracle = Initialize-InventorySourceOracle -Rman $Rman -TnsAlias "MyTnsAlias" -TnsLocation "MyTnsLocation"

$InventorySourceCustomAppGroup = Initialize-InventorySourceCustomAppGroup -DefaultGroup $false -IpRules $InventorySourceIpRules -Oracle $InventorySourceOracle -UnapprovedHostCount 0

$InventorySourceVcmAttributes = Initialize-InventorySourceVcmAttributes -DdboostUserCredsId "MyDdboostUserCredsId" -External $false
$InventorySourceCustomStorageGroup = Initialize-InventorySourceCustomStorageGroup -VcmAttributes $InventorySourceVcmAttributes

$InventorySourceDataDomain = Initialize-InventorySourceDataDomain -MtreeReplicationConnectHost "MyMtreeReplicationConnectHost"

$InventorySourceK8sConfigurationsInner = Initialize-InventorySourceK8sConfigurationsInner -Key "MyKey" -Type "MyType" -Value "MyValue"
$InventorySourceK8s = Initialize-InventorySourceK8s -Configurations $InventorySourceK8sConfigurationsInner -ControllerVersion "MyControllerVersion" -DistributionType "MyDistributionType" -RolloutAt "MyRolloutAt" -RolloutStatus "PENDING" -UpdateMode "AUTO" -VCenterId "MyVCenterId"

$InventorySourceNas = Initialize-InventorySourceNas -Protocol "NFS" -StorageApplianceName "MyStorageApplianceName"
$InventorySourcePpdm = Initialize-InventorySourcePpdm -Direction "INCOMING" -Enabled $false -SystemId "MySystemId"
$InventorySourceVCenter = Initialize-InventorySourceVCenter -AssetSource $false -CloudType "NONE" -DisableAutoSoftwarePackagesManage $false -DisableProxyAutoSoftwarePackagesManage $false -Hosting $false -Internal $false -VSphereUiIntegration $false
$InventorySourceDetails = Initialize-InventorySourceDetails -CustomAppGroup $InventorySourceCustomAppGroup -CustomStorageGroup $InventorySourceCustomStorageGroup -DataDomain $InventorySourceDataDomain -K8s $InventorySourceK8s -Model "MyModel" -Nas $InventorySourceNas -Ppdm $InventorySourcePpdm -VCenter $InventorySourceVCenter

$InventorySourceExternalTenant = Initialize-InventorySourceExternalTenant -Id "MyId" -Name "MyName"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
"DISCOVERY" -Vendor "DATADOMAIN" -Version "MyVersion" # InventorySource |  (optional)

# Create an inventory source
try {
    $Result = New-InventorySource -InventorySource $InventorySource
} catch {
    Write-Host ("Exception occurred when calling New-InventorySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InventorySource** | [**InventorySource**](InventorySource.md)|  | [optional] 

### Return type

[**InventorySource**](InventorySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteInventorySource"></a>
# **Invoke-DeleteInventorySource**
> DeleteInventorySourceResponse Invoke-DeleteInventorySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Prefer] <String><br>

Delete an inventory source by ID

Deletes an inventory source by the specified ID. These inventory source types are supported: VCENTER, KUBERNETES, DATADOMAINMANAGEMENTCENTER, EXTERNALDATADOMAIN Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The inventory source ID.
$Prefer = "respond-async" # String | With header ""Prefer: respond-async"", returns HTTP status 202 with 'activityId' in response body. (optional)

# Delete an inventory source by ID
try {
    $Result = Invoke-DeleteInventorySource -Id $Id -Prefer $Prefer
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteInventorySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The inventory source ID. | 
 **Prefer** | **String**| With header &quot;&quot;Prefer: respond-async&quot;&quot;, returns HTTP status 202 with &#39;activityId&#39; in response body. | [optional] 

### Return type

[**DeleteInventorySourceResponse**](DeleteInventorySourceResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-InventorySource"></a>
# **Get-InventorySource**
> InventorySource Get-InventorySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an inventory source by ID

Retrieves an inventory source by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Restore Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The inventory source ID.

# Get an inventory source by ID
try {
    $Result = Get-InventorySource -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-InventorySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The inventory source ID. | 

### Return type

[**InventorySource**](InventorySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-InventorySources"></a>
# **Get-InventorySources**
> InventorySources Get-InventorySources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all inventory sources

Retrieves all inventory sources in the PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Restore Administrator, Backup Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all inventory sources
try {
    $Result = Get-InventorySources -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-InventorySources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**InventorySources**](InventorySources.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchUpdateInventorySource"></a>
# **Invoke-PatchUpdateInventorySource**
> InventorySource Invoke-PatchUpdateInventorySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InventorySourcePatchRequest] <PSCustomObject><br>

Partially update an inventory source

Send a patch request to partially update the inventory source. Each patch request sets only one inventory source by the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The inventory source ID.
$InventorySourcePatchRequestDetailsVCenterDisableAutoSoftwarePackagesManage = Initialize-InventorySourcePatchRequestDetailsVCenterDisableAutoSoftwarePackagesManage -DisableAutoSoftwarePackagesManage $false -DisableProxyAutoSoftwarePackagesManage $false
$InventorySourcePatchRequestDetailsVCenter = Initialize-InventorySourcePatchRequestDetailsVCenter -VCenter $InventorySourcePatchRequestDetailsVCenterDisableAutoSoftwarePackagesManage

$InventorySourcePatchRequest = Initialize-InventorySourcePatchRequest -Details $InventorySourcePatchRequestDetailsVCenter -Id "MyId" # InventorySourcePatchRequest |  (optional)

# Partially update an inventory source
try {
    $Result = Invoke-PatchUpdateInventorySource -Id $Id -InventorySourcePatchRequest $InventorySourcePatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchUpdateInventorySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The inventory source ID. | 
 **InventorySourcePatchRequest** | [**InventorySourcePatchRequest**](InventorySourcePatchRequest.md)|  | [optional] 

### Return type

[**InventorySource**](InventorySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-InventorySource"></a>
# **Update-InventorySource**
> InventorySource Update-InventorySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InventorySource] <PSCustomObject><br>

Update an inventory source by ID

Updates an inventory source by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The inventory source ID.
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$InventorySourceEmbedded = Initialize-InventorySourceEmbedded -Location $EmbeddedIdName

$Id = Initialize-Id -Id "MyId"

$InventorySourceIpRanges = Initialize-InventorySourceIpRanges -Max "MyMax" -Min "MyMin"

$Netmask = Initialize-Netmask -Notation "CIDR" -Value "MyValue"
$InventorySourceSubnetworks = Initialize-InventorySourceSubnetworks -IpAddress "MyIpAddress" -Netmask $Netmask

$InventorySourceIpRules = Initialize-InventorySourceIpRules -IpList "MyIpList" -IpRanges $InventorySourceIpRanges -Subnetworks $InventorySourceSubnetworks

$Rman = Initialize-Rman -RmanCredsId "MyRmanCredsId" -RmanTnsAlias "MyRmanTnsAlias" -RmanTnsLocation "MyRmanTnsLocation"
$InventorySourceOracle = Initialize-InventorySourceOracle -Rman $Rman -TnsAlias "MyTnsAlias" -TnsLocation "MyTnsLocation"

$InventorySourceCustomAppGroup = Initialize-InventorySourceCustomAppGroup -DefaultGroup $false -IpRules $InventorySourceIpRules -Oracle $InventorySourceOracle -UnapprovedHostCount 0

$InventorySourceVcmAttributes = Initialize-InventorySourceVcmAttributes -DdboostUserCredsId "MyDdboostUserCredsId" -External $false
$InventorySourceCustomStorageGroup = Initialize-InventorySourceCustomStorageGroup -VcmAttributes $InventorySourceVcmAttributes

$InventorySourceDataDomain = Initialize-InventorySourceDataDomain -MtreeReplicationConnectHost "MyMtreeReplicationConnectHost"

$InventorySourceK8sConfigurationsInner = Initialize-InventorySourceK8sConfigurationsInner -Key "MyKey" -Type "MyType" -Value "MyValue"
$InventorySourceK8s = Initialize-InventorySourceK8s -Configurations $InventorySourceK8sConfigurationsInner -ControllerVersion "MyControllerVersion" -DistributionType "MyDistributionType" -RolloutAt "MyRolloutAt" -RolloutStatus "PENDING" -UpdateMode "AUTO" -VCenterId "MyVCenterId"

$InventorySourceNas = Initialize-InventorySourceNas -Protocol "NFS" -StorageApplianceName "MyStorageApplianceName"
$InventorySourcePpdm = Initialize-InventorySourcePpdm -Direction "INCOMING" -Enabled $false -SystemId "MySystemId"
$InventorySourceVCenter = Initialize-InventorySourceVCenter -AssetSource $false -CloudType "NONE" -DisableAutoSoftwarePackagesManage $false -DisableProxyAutoSoftwarePackagesManage $false -Hosting $false -Internal $false -VSphereUiIntegration $false
$InventorySourceDetails = Initialize-InventorySourceDetails -CustomAppGroup $InventorySourceCustomAppGroup -CustomStorageGroup $InventorySourceCustomStorageGroup -DataDomain $InventorySourceDataDomain -K8s $InventorySourceK8s -Model "MyModel" -Nas $InventorySourceNas -Ppdm $InventorySourcePpdm -VCenter $InventorySourceVCenter

$InventorySourceExternalTenant = Initialize-InventorySourceExternalTenant -Id "MyId" -Name "MyName"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
"DISCOVERY"$InventorySource = Initialize-InventorySource -Embedded $InventorySourceEmbedded -Address "MyAddress" -Credentials $Id -Details $InventorySourceDetails -ExternalTenant $InventorySourceExternalTenant -Id "MyId" -LastDiscovered (Get-Date) -LastDiscoveryResult $DiscoveryResult -LastDiscoveryTaskId "MyLastDiscoveryTaskId" -VarLocal $false -MultiFactorAuthenticationEnabled $false -Name "MyName" -Port 0 -Purpose "NAS_SHARE" -Type "APP_HOST" -UnsupportedFeatures 

$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$InventorySourceEmbedded = Initialize-InventorySourceEmbedded -Location $EmbeddedIdName

$Id = Initialize-Id -Id "MyId"

$InventorySourceIpRanges = Initialize-InventorySourceIpRanges -Max "MyMax" -Min "MyMin"

$Netmask = Initialize-Netmask -Notation "CIDR" -Value "MyValue"
$InventorySourceSubnetworks = Initialize-InventorySourceSubnetworks -IpAddress "MyIpAddress" -Netmask $Netmask

$InventorySourceIpRules = Initialize-InventorySourceIpRules -IpList "MyIpList" -IpRanges $InventorySourceIpRanges -Subnetworks $InventorySourceSubnetworks

$Rman = Initialize-Rman -RmanCredsId "MyRmanCredsId" -RmanTnsAlias "MyRmanTnsAlias" -RmanTnsLocation "MyRmanTnsLocation"
$InventorySourceOracle = Initialize-InventorySourceOracle -Rman $Rman -TnsAlias "MyTnsAlias" -TnsLocation "MyTnsLocation"

$InventorySourceCustomAppGroup = Initialize-InventorySourceCustomAppGroup -DefaultGroup $false -IpRules $InventorySourceIpRules -Oracle $InventorySourceOracle -UnapprovedHostCount 0

$InventorySourceVcmAttributes = Initialize-InventorySourceVcmAttributes -DdboostUserCredsId "MyDdboostUserCredsId" -External $false
$InventorySourceCustomStorageGroup = Initialize-InventorySourceCustomStorageGroup -VcmAttributes $InventorySourceVcmAttributes

$InventorySourceDataDomain = Initialize-InventorySourceDataDomain -MtreeReplicationConnectHost "MyMtreeReplicationConnectHost"

$InventorySourceK8sConfigurationsInner = Initialize-InventorySourceK8sConfigurationsInner -Key "MyKey" -Type "MyType" -Value "MyValue"
$InventorySourceK8s = Initialize-InventorySourceK8s -Configurations $InventorySourceK8sConfigurationsInner -ControllerVersion "MyControllerVersion" -DistributionType "MyDistributionType" -RolloutAt "MyRolloutAt" -RolloutStatus "PENDING" -UpdateMode "AUTO" -VCenterId "MyVCenterId"

$InventorySourceNas = Initialize-InventorySourceNas -Protocol "NFS" -StorageApplianceName "MyStorageApplianceName"
$InventorySourcePpdm = Initialize-InventorySourcePpdm -Direction "INCOMING" -Enabled $false -SystemId "MySystemId"
$InventorySourceVCenter = Initialize-InventorySourceVCenter -AssetSource $false -CloudType "NONE" -DisableAutoSoftwarePackagesManage $false -DisableProxyAutoSoftwarePackagesManage $false -Hosting $false -Internal $false -VSphereUiIntegration $false
$InventorySourceDetails = Initialize-InventorySourceDetails -CustomAppGroup $InventorySourceCustomAppGroup -CustomStorageGroup $InventorySourceCustomStorageGroup -DataDomain $InventorySourceDataDomain -K8s $InventorySourceK8s -Model "MyModel" -Nas $InventorySourceNas -Ppdm $InventorySourcePpdm -VCenter $InventorySourceVCenter

$InventorySourceExternalTenant = Initialize-InventorySourceExternalTenant -Id "MyId" -Name "MyName"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
"DISCOVERY" -Vendor "DATADOMAIN" -Version "MyVersion" # InventorySource |  (optional)

# Update an inventory source by ID
try {
    $Result = Update-InventorySource -Id $Id -InventorySource $InventorySource
} catch {
    Write-Host ("Exception occurred when calling Update-InventorySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The inventory source ID. | 
 **InventorySource** | [**InventorySource**](InventorySource.md)|  | [optional] 

### Return type

[**InventorySource**](InventorySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

