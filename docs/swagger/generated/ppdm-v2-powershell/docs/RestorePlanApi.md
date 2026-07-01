# PpdmApiReference.PpdmApiReference\Api.RestorePlanApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Copy-RestorePlan**](RestorePlanApi.md#Copy-RestorePlan) | **POST** /api/v2/restore-plans/{id}/clone | Clone restore plan by ID
[**New-RestorePlan**](RestorePlanApi.md#New-RestorePlan) | **POST** /api/v2/restore-plans | Create restore plan
[**Invoke-DeleteRestorePlan**](RestorePlanApi.md#Invoke-DeleteRestorePlan) | **DELETE** /api/v2/restore-plans/{id} | Delete restore plan by ID
[**Get-AllRestorePlans**](RestorePlanApi.md#Get-AllRestorePlans) | **GET** /api/v2/restore-plans | Get all restore plans
[**Get-RestorePlanById**](RestorePlanApi.md#Get-RestorePlanById) | **GET** /api/v2/restore-plans/{id} | Get restore plan by ID
[**Invoke-RunRestorePlan**](RestorePlanApi.md#Invoke-RunRestorePlan) | **POST** /api/v2/restore-plans/{id}/execute | Execute restore plan
[**Update-RestorePlan**](RestorePlanApi.md#Update-RestorePlan) | **PATCH** /api/v2/restore-plans/{id} | Update restore plan by ID


<a id="Copy-RestorePlan"></a>
# **Copy-RestorePlan**
> RestorePlan Copy-RestorePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestorePlan] <PSCustomObject><br>

Clone restore plan by ID

clone restore plan by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the restore plan.
$LastRun = Initialize-LastRun -Status "SUCCESS" -Time (Get-Date)

$RestorePlanAssetSelector = Initialize-RestorePlanAssetSelector -AssetCount 0 -AssetIds "MyAssetIds" -Type "MANUAL"
$RestorePlanCopySelector = Initialize-RestorePlanCopySelector -FallbackStrategy "USE_LATEST" -StorageSystemId "MyStorageSystemId" -Type "USE_LATEST"

$RestoreGroupVMCredentials = Initialize-RestoreGroupVMCredentials -AdminCredentialId "MyAdminCredentialId" -UserCredentialId "MyUserCredentialId"

$RestoreGroupVirtualDiskMapDefault = Initialize-RestoreGroupVirtualDiskMapDefault -DatastoreMoref "MyDatastoreMoref" -ProvisioningType "THICK"
$RestoreGroupVirtualDiskMap = Initialize-RestoreGroupVirtualDiskMap -Default $RestoreGroupVirtualDiskMapDefault

$EsxHostInfo = Initialize-EsxHostInfo -HostName "MyHostName" -UserName "MyUserName" -UserPassword "MyUserPassword"

$RestoreGroupNetworkSettingsDefaultDest = Initialize-RestoreGroupNetworkSettingsDefaultDest -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsDefault = Initialize-RestoreGroupNetworkSettingsDefault -Dest $RestoreGroupNetworkSettingsDefaultDest

$RestoreGroupNetworkSettingsMappingsInnerSource = Initialize-RestoreGroupNetworkSettingsMappingsInnerSource -DataCenterMoref "MyDataCenterMoref" -InventorySourceId "MyInventorySourceId" -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsMappingsInner = Initialize-RestoreGroupNetworkSettingsMappingsInner -Dest $RestoreGroupNetworkSettingsDefaultDest -Source $RestoreGroupNetworkSettingsMappingsInnerSource

$RestoreGroupNetworkSettings = Initialize-RestoreGroupNetworkSettings -Default $RestoreGroupNetworkSettingsDefault -Mappings $RestoreGroupNetworkSettingsMappingsInner -ReconnectNic $false

$RestoreGroupTargetVmInfo = Initialize-RestoreGroupTargetVmInfo -ClusterMoref "MyClusterMoref" -Credentials $RestoreGroupVMCredentials -DataCenterMoref "MyDataCenterMoref" -DeleteBackingFile $false -Disk $RestoreGroupVirtualDiskMap -EsxHost $EsxHostInfo -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -InventorySourceId "MyInventorySourceId" -Network $RestoreGroupNetworkSettings -RecoverConfig $false -ResourcePoolMoref "MyResourcePoolMoref" -SpbmRestoreDirective "OFF" -TagRestoreDirective "OFF" -VmPowerOn $false -VmReconnectNic $false

$VmExtendedData = Initialize-VmExtendedData -EnableCompressedRestore $false -PreferredInterface "MyPreferredInterface" -RequestedProxy "MyRequestedProxy" -RestoreBiosUuid $false -RestoreOriginalMachineConfig $false -Target $RestoreGroupTargetVmInfo -VcenterId "MyVcenterId"

$RestoreGroup = Initialize-RestoreGroup -AssetSelector $RestorePlanAssetSelector -AssetType "VMWARE_VIRTUAL_MACHINE" -CopySelector $RestorePlanCopySelector -Description "MyDescription" -ExtendedData $VmExtendedData -Id "MyId" -Name "MyName" -Priority 0 -RestoreType "TO_PRODUCTION" -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason"

$RestorePlanSchedule = Initialize-RestorePlanSchedule -StartTime (Get-Date)
$RestorePlan = Initialize-RestorePlan -CreatedAt (Get-Date) -Description "MyDescription" -FallbackStrategy "CANCEL_ON_FAILURE" -Id "MyId" -LastRun $LastRun -Name "MyName" -ResourceGroupIds "MyResourceGroupIds" -RestoreGroups $RestoreGroup -Schedule $RestorePlanSchedule -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason" -UpdatedAt (Get-Date) # RestorePlan |  (optional)

# Clone restore plan by ID
try {
    $Result = Copy-RestorePlan -Id $Id -RestorePlan $RestorePlan
} catch {
    Write-Host ("Exception occurred when calling Copy-RestorePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the restore plan. | 
 **RestorePlan** | [**RestorePlan**](RestorePlan.md)|  | [optional] 

### Return type

[**RestorePlan**](RestorePlan.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-RestorePlan"></a>
# **New-RestorePlan**
> RestorePlan New-RestorePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestorePlan] <PSCustomObject><br>

Create restore plan

Create a restore plan. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LastRun = Initialize-LastRun -Status "SUCCESS" -Time (Get-Date)

$RestorePlanAssetSelector = Initialize-RestorePlanAssetSelector -AssetCount 0 -AssetIds "MyAssetIds" -Type "MANUAL"
$RestorePlanCopySelector = Initialize-RestorePlanCopySelector -FallbackStrategy "USE_LATEST" -StorageSystemId "MyStorageSystemId" -Type "USE_LATEST"

$RestoreGroupVMCredentials = Initialize-RestoreGroupVMCredentials -AdminCredentialId "MyAdminCredentialId" -UserCredentialId "MyUserCredentialId"

$RestoreGroupVirtualDiskMapDefault = Initialize-RestoreGroupVirtualDiskMapDefault -DatastoreMoref "MyDatastoreMoref" -ProvisioningType "THICK"
$RestoreGroupVirtualDiskMap = Initialize-RestoreGroupVirtualDiskMap -Default $RestoreGroupVirtualDiskMapDefault

$EsxHostInfo = Initialize-EsxHostInfo -HostName "MyHostName" -UserName "MyUserName" -UserPassword "MyUserPassword"

$RestoreGroupNetworkSettingsDefaultDest = Initialize-RestoreGroupNetworkSettingsDefaultDest -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsDefault = Initialize-RestoreGroupNetworkSettingsDefault -Dest $RestoreGroupNetworkSettingsDefaultDest

$RestoreGroupNetworkSettingsMappingsInnerSource = Initialize-RestoreGroupNetworkSettingsMappingsInnerSource -DataCenterMoref "MyDataCenterMoref" -InventorySourceId "MyInventorySourceId" -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsMappingsInner = Initialize-RestoreGroupNetworkSettingsMappingsInner -Dest $RestoreGroupNetworkSettingsDefaultDest -Source $RestoreGroupNetworkSettingsMappingsInnerSource

$RestoreGroupNetworkSettings = Initialize-RestoreGroupNetworkSettings -Default $RestoreGroupNetworkSettingsDefault -Mappings $RestoreGroupNetworkSettingsMappingsInner -ReconnectNic $false

$RestoreGroupTargetVmInfo = Initialize-RestoreGroupTargetVmInfo -ClusterMoref "MyClusterMoref" -Credentials $RestoreGroupVMCredentials -DataCenterMoref "MyDataCenterMoref" -DeleteBackingFile $false -Disk $RestoreGroupVirtualDiskMap -EsxHost $EsxHostInfo -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -InventorySourceId "MyInventorySourceId" -Network $RestoreGroupNetworkSettings -RecoverConfig $false -ResourcePoolMoref "MyResourcePoolMoref" -SpbmRestoreDirective "OFF" -TagRestoreDirective "OFF" -VmPowerOn $false -VmReconnectNic $false

$VmExtendedData = Initialize-VmExtendedData -EnableCompressedRestore $false -PreferredInterface "MyPreferredInterface" -RequestedProxy "MyRequestedProxy" -RestoreBiosUuid $false -RestoreOriginalMachineConfig $false -Target $RestoreGroupTargetVmInfo -VcenterId "MyVcenterId"

$RestoreGroup = Initialize-RestoreGroup -AssetSelector $RestorePlanAssetSelector -AssetType "VMWARE_VIRTUAL_MACHINE" -CopySelector $RestorePlanCopySelector -Description "MyDescription" -ExtendedData $VmExtendedData -Id "MyId" -Name "MyName" -Priority 0 -RestoreType "TO_PRODUCTION" -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason"

$RestorePlanSchedule = Initialize-RestorePlanSchedule -StartTime (Get-Date)
$RestorePlan = Initialize-RestorePlan -CreatedAt (Get-Date) -Description "MyDescription" -FallbackStrategy "CANCEL_ON_FAILURE" -Id "MyId" -LastRun $LastRun -Name "MyName" -ResourceGroupIds "MyResourceGroupIds" -RestoreGroups $RestoreGroup -Schedule $RestorePlanSchedule -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason" -UpdatedAt (Get-Date) # RestorePlan | 

# Create restore plan
try {
    $Result = New-RestorePlan -RestorePlan $RestorePlan
} catch {
    Write-Host ("Exception occurred when calling New-RestorePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RestorePlan** | [**RestorePlan**](RestorePlan.md)|  | 

### Return type

[**RestorePlan**](RestorePlan.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRestorePlan"></a>
# **Invoke-DeleteRestorePlan**
> void Invoke-DeleteRestorePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete restore plan by ID

Delete restore plan by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the restore plan.

# Delete restore plan by ID
try {
    $Result = Invoke-DeleteRestorePlan -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRestorePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the restore plan. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllRestorePlans"></a>
# **Get-AllRestorePlans**
> RestorePlans Get-AllRestorePlans<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all restore plans

Get all restore plans. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all restore plans
try {
    $Result = Get-AllRestorePlans -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AllRestorePlans: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**RestorePlans**](RestorePlans.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RestorePlanById"></a>
# **Get-RestorePlanById**
> RestorePlan Get-RestorePlanById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get restore plan by ID

Get restore plan by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the restore plan.

# Get restore plan by ID
try {
    $Result = Get-RestorePlanById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-RestorePlanById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the restore plan. | 

### Return type

[**RestorePlan**](RestorePlan.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RunRestorePlan"></a>
# **Invoke-RunRestorePlan**
> RestorePlanExecutionResult Invoke-RunRestorePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestorePlanExecutionRequest] <PSCustomObject><br>

Execute restore plan

Request to execute the restore plan. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the restore plan.
$RestorePlanExecutionRequest = Initialize-RestorePlanExecutionRequest -ExecutionType "IMMEDIATELY" -ScheduleTime (Get-Date) # RestorePlanExecutionRequest | 

# Execute restore plan
try {
    $Result = Invoke-RunRestorePlan -Id $Id -RestorePlanExecutionRequest $RestorePlanExecutionRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-RunRestorePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the restore plan. | 
 **RestorePlanExecutionRequest** | [**RestorePlanExecutionRequest**](RestorePlanExecutionRequest.md)|  | 

### Return type

[**RestorePlanExecutionResult**](RestorePlanExecutionResult.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-RestorePlan"></a>
# **Update-RestorePlan**
> RestorePlan Update-RestorePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestorePlan] <PSCustomObject><br>

Update restore plan by ID

Update restore plan by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the restore plan.
$LastRun = Initialize-LastRun -Status "SUCCESS" -Time (Get-Date)

$RestorePlanAssetSelector = Initialize-RestorePlanAssetSelector -AssetCount 0 -AssetIds "MyAssetIds" -Type "MANUAL"
$RestorePlanCopySelector = Initialize-RestorePlanCopySelector -FallbackStrategy "USE_LATEST" -StorageSystemId "MyStorageSystemId" -Type "USE_LATEST"

$RestoreGroupVMCredentials = Initialize-RestoreGroupVMCredentials -AdminCredentialId "MyAdminCredentialId" -UserCredentialId "MyUserCredentialId"

$RestoreGroupVirtualDiskMapDefault = Initialize-RestoreGroupVirtualDiskMapDefault -DatastoreMoref "MyDatastoreMoref" -ProvisioningType "THICK"
$RestoreGroupVirtualDiskMap = Initialize-RestoreGroupVirtualDiskMap -Default $RestoreGroupVirtualDiskMapDefault

$EsxHostInfo = Initialize-EsxHostInfo -HostName "MyHostName" -UserName "MyUserName" -UserPassword "MyUserPassword"

$RestoreGroupNetworkSettingsDefaultDest = Initialize-RestoreGroupNetworkSettingsDefaultDest -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsDefault = Initialize-RestoreGroupNetworkSettingsDefault -Dest $RestoreGroupNetworkSettingsDefaultDest

$RestoreGroupNetworkSettingsMappingsInnerSource = Initialize-RestoreGroupNetworkSettingsMappingsInnerSource -DataCenterMoref "MyDataCenterMoref" -InventorySourceId "MyInventorySourceId" -NetworkMoref "MyNetworkMoref"
$RestoreGroupNetworkSettingsMappingsInner = Initialize-RestoreGroupNetworkSettingsMappingsInner -Dest $RestoreGroupNetworkSettingsDefaultDest -Source $RestoreGroupNetworkSettingsMappingsInnerSource

$RestoreGroupNetworkSettings = Initialize-RestoreGroupNetworkSettings -Default $RestoreGroupNetworkSettingsDefault -Mappings $RestoreGroupNetworkSettingsMappingsInner -ReconnectNic $false

$RestoreGroupTargetVmInfo = Initialize-RestoreGroupTargetVmInfo -ClusterMoref "MyClusterMoref" -Credentials $RestoreGroupVMCredentials -DataCenterMoref "MyDataCenterMoref" -DeleteBackingFile $false -Disk $RestoreGroupVirtualDiskMap -EsxHost $EsxHostInfo -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -InventorySourceId "MyInventorySourceId" -Network $RestoreGroupNetworkSettings -RecoverConfig $false -ResourcePoolMoref "MyResourcePoolMoref" -SpbmRestoreDirective "OFF" -TagRestoreDirective "OFF" -VmPowerOn $false -VmReconnectNic $false

$VmExtendedData = Initialize-VmExtendedData -EnableCompressedRestore $false -PreferredInterface "MyPreferredInterface" -RequestedProxy "MyRequestedProxy" -RestoreBiosUuid $false -RestoreOriginalMachineConfig $false -Target $RestoreGroupTargetVmInfo -VcenterId "MyVcenterId"

$RestoreGroup = Initialize-RestoreGroup -AssetSelector $RestorePlanAssetSelector -AssetType "VMWARE_VIRTUAL_MACHINE" -CopySelector $RestorePlanCopySelector -Description "MyDescription" -ExtendedData $VmExtendedData -Id "MyId" -Name "MyName" -Priority 0 -RestoreType "TO_PRODUCTION" -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason"

$RestorePlanSchedule = Initialize-RestorePlanSchedule -StartTime (Get-Date)
$RestorePlan = Initialize-RestorePlan -CreatedAt (Get-Date) -Description "MyDescription" -FallbackStrategy "CANCEL_ON_FAILURE" -Id "MyId" -LastRun $LastRun -Name "MyName" -ResourceGroupIds "MyResourceGroupIds" -RestoreGroups $RestoreGroup -Schedule $RestorePlanSchedule -State "CONFIG_INCOMPLETE" -StateReason "MyStateReason" -UpdatedAt (Get-Date) # RestorePlan | 

# Update restore plan by ID
try {
    $Result = Update-RestorePlan -Id $Id -RestorePlan $RestorePlan
} catch {
    Write-Host ("Exception occurred when calling Update-RestorePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the restore plan. | 
 **RestorePlan** | [**RestorePlan**](RestorePlan.md)|  | 

### Return type

[**RestorePlan**](RestorePlan.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

