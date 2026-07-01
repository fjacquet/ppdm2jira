# PpdmApiReference.PpdmApiReference\Api.AssetManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AssetsQuery**](AssetManagementApi.md#Invoke-AssetsQuery) | **POST** /api/v2/assets-query | Get all assets
[**Set-AssetNetworks**](AssetManagementApi.md#Set-AssetNetworks) | **PATCH** /api/v2/asset-networks-batch | Network assignment/unassignment on assets
[**Invoke-BatchUpdateAssets**](AssetManagementApi.md#Invoke-BatchUpdateAssets) | **PATCH** /api/v2/assets-batch | Update multiple assets in batch
[**Rename-Protectable**](AssetManagementApi.md#Rename-Protectable) | **POST** /api/v2/assets/{id}/change-protectable | Update the value of the protectable field of the asset
[**New-DynamicFilter**](AssetManagementApi.md#New-DynamicFilter) | **POST** /api/v2/dynamic-filters | Create a dynamic filter
[**New-ProtectionGroup**](AssetManagementApi.md#New-ProtectionGroup) | **POST** /api/v2/protection-groups | Create a protection group
[**New-ProtectionRule**](AssetManagementApi.md#New-ProtectionRule) | **POST** /api/v2/protection-rules | Create a protection rule
[**New-ProtectionRulesConflictsPreview**](AssetManagementApi.md#New-ProtectionRulesConflictsPreview) | **POST** /api/v2/protection-rules-conflicts-preview | Get the preview of all other protection rules having asset assignment conflict with the given protection rule
[**New-ResourceGroup**](AssetManagementApi.md#New-ResourceGroup) | **POST** /api/v2/resource-groups | Create a resource group.
[**Invoke-DeleteDynamicFilter**](AssetManagementApi.md#Invoke-DeleteDynamicFilter) | **DELETE** /api/v2/dynamic-filters/{id} | Delete dynamic filter by ID
[**Invoke-DeleteProtectionGroup**](AssetManagementApi.md#Invoke-DeleteProtectionGroup) | **DELETE** /api/v2/protection-groups/{id} | Delete a protection group by ID
[**Invoke-DeleteProtectionRule**](AssetManagementApi.md#Invoke-DeleteProtectionRule) | **DELETE** /api/v2/protection-rules/{id} | Delete a protection rule by ID
[**Invoke-DeleteResourceGroup**](AssetManagementApi.md#Invoke-DeleteResourceGroup) | **DELETE** /api/v2/resource-groups/{id} | Delete a resource group by ID.
[**Invoke-DeleteRule**](AssetManagementApi.md#Invoke-DeleteRule) | **DELETE** /api/v2/rules/{id} | Delete a rule
[**Invoke-ExecuteDynamicFilters**](AssetManagementApi.md#Invoke-ExecuteDynamicFilters) | **POST** /api/v2/dynamic-filters-execution | Execute dynamic filters
[**Invoke-ExecuteProtectionRules**](AssetManagementApi.md#Invoke-ExecuteProtectionRules) | **POST** /api/v2/protection-rules-execution | Execute protection rules
[**Export-AssetProtectionDetails**](AssetManagementApi.md#Export-AssetProtectionDetails) | **GET** /api/v2/asset-protection-details | Export asset protection details from protection policy as CSV file
[**Get-Asset**](AssetManagementApi.md#Get-Asset) | **GET** /api/v2/assets/{id} | Get an asset by ID
[**Get-AssetActiveHosts**](AssetManagementApi.md#Get-AssetActiveHosts) | **GET** /api/v2/assets/{id}/active-hosts | Get active hosts for an asset
[**Get-AssetCopies**](AssetManagementApi.md#Get-AssetCopies) | **GET** /api/v2/assets/{id}/copies | Get copies for an asset
[**Get-AssetCopyMap**](AssetManagementApi.md#Get-AssetCopyMap) | **GET** /api/v2/assets/{id}/copy-map | Get copy map for an asset
[**Get-AssetHosts**](AssetManagementApi.md#Get-AssetHosts) | **GET** /api/v2/assets/{id}/hosts | Get hosts for an asset
[**Get-AssetSettings**](AssetManagementApi.md#Get-AssetSettings) | **GET** /api/v2/common-settings/ASSET_SETTING | Get asset settings
[**Get-Assets**](AssetManagementApi.md#Get-Assets) | **GET** /api/v2/assets | Get all assets
[**Get-ChildInfrastructureNodeById**](AssetManagementApi.md#Get-ChildInfrastructureNodeById) | **GET** /api/v2/infrastructure-nodes/{parent-node-id}/children | Get child infrastructure nodes by its parent node ID
[**Get-CredentialsUsage**](AssetManagementApi.md#Get-CredentialsUsage) | **GET** /api/v2/credentials/{id}/usage | Get all the consumers which are using this credential
[**Get-DynamicFilter**](AssetManagementApi.md#Get-DynamicFilter) | **GET** /api/v2/dynamic-filters/{id} | Get a dynamic filter by ID
[**Get-DynamicFilterSettings**](AssetManagementApi.md#Get-DynamicFilterSettings) | **GET** /api/v2/common-settings/DYNAMIC_FILTER_SETTING | Get dynamic filter settings
[**Get-DynamicFilters**](AssetManagementApi.md#Get-DynamicFilters) | **GET** /api/v2/dynamic-filters | Get all dynamic filters
[**Get-Host**](AssetManagementApi.md#Get-Host) | **GET** /api/v2/hosts/{id} | Get a host by ID
[**Get-Hosts**](AssetManagementApi.md#Get-Hosts) | **GET** /api/v2/hosts | Get all hosts
[**Get-InfrastructureNodeById**](AssetManagementApi.md#Get-InfrastructureNodeById) | **GET** /api/v2/infrastructure-nodes/{id} | Get an infrastructure node by its ID
[**Get-ProtectionGroup**](AssetManagementApi.md#Get-ProtectionGroup) | **GET** /api/v2/protection-groups/{id} | Get a protection group by ID
[**Get-ProtectionGroupCopyMap**](AssetManagementApi.md#Get-ProtectionGroupCopyMap) | **GET** /api/v2/protection-groups/{id}/copy-map | Get copy map for assets in the given protection group
[**Get-ProtectionGroups**](AssetManagementApi.md#Get-ProtectionGroups) | **GET** /api/v2/protection-groups | Get all protection groups
[**Get-ProtectionRule**](AssetManagementApi.md#Get-ProtectionRule) | **GET** /api/v2/protection-rules/{id} | Get a protection rule by ID
[**Get-ProtectionRules**](AssetManagementApi.md#Get-ProtectionRules) | **GET** /api/v2/protection-rules | Get all protection rules
[**Get-ResourceGroupById**](AssetManagementApi.md#Get-ResourceGroupById) | **GET** /api/v2/resource-groups/{id} | Get a resource group by its ID.
[**Get-ResourceGroups**](AssetManagementApi.md#Get-ResourceGroups) | **GET** /api/v2/resource-groups | Get all resource groups.
[**Get-RootInfrastructureNodes**](AssetManagementApi.md#Get-RootInfrastructureNodes) | **GET** /api/v2/infrastructure-nodes | Get root infrastructure nodes for the specified hierarchy type
[**Get-Rule**](AssetManagementApi.md#Get-Rule) | **GET** /api/v2/rules/{id} | Get a single rule
[**Get-Rules**](AssetManagementApi.md#Get-Rules) | **GET** /api/v2/rules | Get a list of rules
[**Get-VmBackupSettings**](AssetManagementApi.md#Get-VmBackupSettings) | **GET** /api/v2/common-settings/VM_BACKUP_SETTING | Get VM backup settings
[**ConvertTo-itiateAgentInstallationOnVm**](AssetManagementApi.md#ConvertTo-itiateAgentInstallationOnVm) | **POST** /api/v2/vm-agent-installation | Initiate agent installation on VM asset
[**Invoke-PatchProtectionGroup**](AssetManagementApi.md#Invoke-PatchProtectionGroup) | **PATCH** /api/v2/protection-groups/{id} | Patch a protection group
[**Invoke-PatchRule**](AssetManagementApi.md#Invoke-PatchRule) | **PATCH** /api/v2/rules/{id} | Update a rule
[**Submit-AssetsDeletionBatch**](AssetManagementApi.md#Submit-AssetsDeletionBatch) | **POST** /api/v2/assets-deletion-batch | Delete multiple assets in batch
[**Submit-CredentialsDeletionBatch**](AssetManagementApi.md#Submit-CredentialsDeletionBatch) | **POST** /api/v2/credentials-deletion-batch | Delete multiple credentials in batch
[**Submit-Rule**](AssetManagementApi.md#Submit-Rule) | **POST** /api/v2/rules | Create a rule to associate filter to assign a resource group
[**Invoke-ResourceAssignmentsBatch**](AssetManagementApi.md#Invoke-ResourceAssignmentsBatch) | **POST** /api/v2/resource-groups/{id}/resource-assignments-batch | Assign resources into resource groups
[**Invoke-ResourceUnassignmentsBatch**](AssetManagementApi.md#Invoke-ResourceUnassignmentsBatch) | **POST** /api/v2/resource-groups/{id}/resource-unassignments-batch | Unassign resources from resource groups
[**Invoke-RunRules**](AssetManagementApi.md#Invoke-RunRules) | **POST** /api/v2/rules/{id}/run | Run a single rule
[**Invoke-UnassignResourceGroupByCriteria**](AssetManagementApi.md#Invoke-UnassignResourceGroupByCriteria) | **POST** /api/v2/resource-group-unassignment-by-criteria | Unassigning resource group by asset type
[**Update-Asset**](AssetManagementApi.md#Update-Asset) | **PUT** /api/v2/assets/{id} | Update asset credential ID
[**Update-AssetExcludeDisk**](AssetManagementApi.md#Update-AssetExcludeDisk) | **PATCH** /api/v2/assets/{id} | Set disks excluded status of an asset
[**Update-AssetSettings**](AssetManagementApi.md#Update-AssetSettings) | **PUT** /api/v2/common-settings/ASSET_SETTING | Modify asset settings
[**Update-DynamicFilter**](AssetManagementApi.md#Update-DynamicFilter) | **PUT** /api/v2/dynamic-filters/{id} | Update a dynamic filter by ID
[**Update-DynamicFilterSettings**](AssetManagementApi.md#Update-DynamicFilterSettings) | **PUT** /api/v2/common-settings/DYNAMIC_FILTER_SETTING | Update dynamic filter settings
[**Update-Host**](AssetManagementApi.md#Update-Host) | **PUT** /api/v2/hosts/{id} | Update host credential and TNS values by ID
[**Update-ProtectionRule**](AssetManagementApi.md#Update-ProtectionRule) | **PUT** /api/v2/protection-rules/{id} | Update a protection rule by ID
[**Update-ResourceGroupNameAndDesciption**](AssetManagementApi.md#Update-ResourceGroupNameAndDesciption) | **PATCH** /api/v2/resource-groups/{id} | Update name or description for resource group
[**Update-VmBackupSettings**](AssetManagementApi.md#Update-VmBackupSettings) | **PUT** /api/v2/common-settings/VM_BACKUP_SETTING | Update VM backup settings


<a id="Invoke-AssetsQuery"></a>
# **Invoke-AssetsQuery**
> Assets Invoke-AssetsQuery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get all assets

Accepts request with content type as application/x-www-form-urlencoded and retrieves all assets that PowerProtect Data Manager manages. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get all assets
try {
    $Result = Invoke-AssetsQuery -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetsQuery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Assets**](Assets.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-AssetNetworks"></a>
# **Set-AssetNetworks**
> void Set-AssetNetworks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetNetworksBatchRequests] <PSCustomObject><br>

Network assignment/unassignment on assets

Initiates batch operation of asset networks assignment or unassignment on selected asset IDs. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AssetNetworksBatchRequestBody = Initialize-AssetNetworksBatchRequestBody -AssetNetworkLabel "MyAssetNetworkLabel" -Id "MyId" -NetworkLabel "MyNetworkLabel"
$AssetNetworksBatchRequest = Initialize-AssetNetworksBatchRequest -Body $AssetNetworksBatchRequestBody -Id "MyId"

$AssetNetworksBatchRequests = Initialize-AssetNetworksBatchRequests -Requests $AssetNetworksBatchRequest # AssetNetworksBatchRequests |  (optional)

# Network assignment/unassignment on assets
try {
    $Result = Set-AssetNetworks -AssetNetworksBatchRequests $AssetNetworksBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Set-AssetNetworks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetNetworksBatchRequests** | [**AssetNetworksBatchRequests**](AssetNetworksBatchRequests.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-BatchUpdateAssets"></a>
# **Invoke-BatchUpdateAssets**
> void Invoke-BatchUpdateAssets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BatchUpdateAssetRequests] <PSCustomObject><br>

Update multiple assets in batch

Update a batch of assets.  Guidelines for changing the sliceSize property: For assets up to 5TB, smaller slice sizes can be used if necessary. The recommended slice size is 50GB, with the following possible slice counts based on the asset size ranges:  -100GB to 1000GB: 20 slices -1000GB to 2000GB: 40 slices -2000GB to 3000GB: 60 slices -3000GB to 4000GB: 80 slices  The minimum and maximum slice size is 20GB and 400GB respectively while the default value is 200GB.  These recommendations optimize the handling of assets while considering their respective sizes. It's important to assess the actual need for smaller slices based on your system requirements. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$BatchUpdateAssetRequestBodyBackupDetails = Initialize-BatchUpdateAssetRequestBodyBackupDetails -BackupType "SYNTHETIC_FULL" -Parallelism 0

$AssetExtraInfo = Initialize-AssetExtraInfo -Name "MyName" -Value "MyValue"
$AssetCredentials = Initialize-AssetCredentials -ExtraInfo $AssetExtraInfo -Id "MyId" -Type "OS"

$BatchUpdateAssetRequestBodyDetailsVm = Initialize-BatchUpdateAssetRequestBodyDetailsVm -DataMoverType "INHERIT_FROM_POLICY" -DisableCbt $false -DisableQuiescing $false
$BatchUpdateAssetRequestBodyDetails = Initialize-BatchUpdateAssetRequestBodyDetails -Vm $BatchUpdateAssetRequestBodyDetailsVm

$AssetExtendedDataNfsShare = Initialize-AssetExtendedDataNfsShare -Name "MyName" -Version "MyVersion"
$AssetExtendedData = Initialize-AssetExtendedData -AdsFileBackupEnabled $false -AlternateDestinationPath "MyAlternateDestinationPath" -ChangeFileListEnabled $false -ContinueOnFileNameLenLimitReached $false -DepthLimit 0 -EnableNasFsApiScan $false -FailedBackupRetryCount 0 -MaxSliceFolderCount 0 -NfsShare $AssetExtendedDataNfsShare -OverrideExisting $false -PreviousSliceFileCount 0 -PreviousSliceSize 0 -RelativeWorkingDirectory "MyRelativeWorkingDirectory" -SkipFilesWithNameLenLimitReached $false -SliceFileCount 0 -SliceSize 0 -UpdateTimeOut 0

$AssetPreferredHostRef = Initialize-AssetPreferredHostRef -Id "MyId" -Name "MyName"
$BatchUpdateAssetRequestBodyProtectionGroupRef = Initialize-BatchUpdateAssetRequestBodyProtectionGroupRef -Id "MyId" -MemberRole "GENERIC"
$BatchUpdateAssetRequestBodyProtectionPolicy = Initialize-BatchUpdateAssetRequestBodyProtectionPolicy -BackupRank 0
$BatchUpdateAssetRequestBody = Initialize-BatchUpdateAssetRequestBody -BackupDetails $BatchUpdateAssetRequestBodyBackupDetails -Credentials $AssetCredentials -Details $BatchUpdateAssetRequestBodyDetails -ExtendedData $AssetExtendedData -Id "MyId" -LastAvailableCopyTime (Get-Date) -PreferredHostRef $AssetPreferredHostRef -ProtectionGroupRef $BatchUpdateAssetRequestBodyProtectionGroupRef -ProtectionPolicy $BatchUpdateAssetRequestBodyProtectionPolicy -ProtectionProtocol "BOOSTFS" -UserTags "MyUserTags"

$BatchUpdateAssetRequest = Initialize-BatchUpdateAssetRequest -Body $BatchUpdateAssetRequestBody -Id "MyId"

$BatchUpdateAssetRequests = Initialize-BatchUpdateAssetRequests -Requests $BatchUpdateAssetRequest # BatchUpdateAssetRequests |  (optional)

# Update multiple assets in batch
try {
    $Result = Invoke-BatchUpdateAssets -BatchUpdateAssetRequests $BatchUpdateAssetRequests
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchUpdateAssets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BatchUpdateAssetRequests** | [**BatchUpdateAssetRequests**](BatchUpdateAssetRequests.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Rename-Protectable"></a>
# **Rename-Protectable**
> Asset Rename-Protectable<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetChangeProtectableRequest] <PSCustomObject><br>

Update the value of the protectable field of the asset

Updates the value of the protectable field of only a top-level parent storage group that has at least one child storage group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$AssetChangeProtectableRequest = Initialize-AssetChangeProtectableRequest -Protectable $false # AssetChangeProtectableRequest |  (optional)

# Update the value of the protectable field of the asset
try {
    $Result = Rename-Protectable -Id $Id -AssetChangeProtectableRequest $AssetChangeProtectableRequest
} catch {
    Write-Host ("Exception occurred when calling Rename-Protectable: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **AssetChangeProtectableRequest** | [**AssetChangeProtectableRequest**](AssetChangeProtectableRequest.md)|  | [optional] 

### Return type

[**Asset**](Asset.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DynamicFilter"></a>
# **New-DynamicFilter**
> ProtectionRule New-DynamicFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRule] <PSCustomObject><br>

Create a dynamic filter

Create a dynamic filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$EmbeddedProtectionPolicy = Initialize-EmbeddedProtectionPolicy -BackupMechanism "SBT" -BackupRank 0 -Id "MyId" -Name "MyName" -ProtectionEngine "MyProtectionEngine" -Type "MyType"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$AssetEmbedded = Initialize-AssetEmbedded -ProtectionPolicy $EmbeddedProtectionPolicy -ProtectionlifeCycle $EmbeddedProtectionPolicy -StorageSystem $EmbeddedIdName

$Condition = Initialize-Condition -AssetAttributeName "MyAssetAttributeName" -AssetAttributeValue "MyAssetAttributeValue" -AssetAttributeValues "MyAssetAttributeValues" -Operator "IN"
$Id = Initialize-Id -Id "MyId"
$ProtectionRule = Initialize-ProtectionRule -Embedded $AssetEmbedded -Action "MOVE_TO_GROUP" -ActionResult "MyActionResult" -AssignedAssetsCount 0 -Category "PRIMITIVE" -ConditionConnector "AND" -Conditions $Condition -Description "MyDescription" -DisplayDescription "MyDisplayDescription" -Id "MyId" -InventorySourceType "CLOUD_NATIVE_ENTITY" -LastRunAt (Get-Date) -LogicalOperator "AND" -ManagedBy "PROTECTION_POLICY" -Name "MyName" -Priority 0 -Rules $ProtectionRule -Tenant $Id # ProtectionRule |  (optional)

# Create a dynamic filter
try {
    $Result = New-DynamicFilter -ProtectionRule $ProtectionRule
} catch {
    Write-Host ("Exception occurred when calling New-DynamicFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionRule** | [**ProtectionRule**](ProtectionRule.md)|  | [optional] 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ProtectionGroup"></a>
# **New-ProtectionGroup**
> ProtectionGroup New-ProtectionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionGroup] <PSCustomObject><br>

Create a protection group

Creates a protection group if an existing protection group with the provided naturalIds is not found. Otherwise, the existing protection group will be updated using a PATCH operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ProtectionGroupProtectionPolicyRef = Initialize-ProtectionGroupProtectionPolicyRef -BackupMechanism "SBT" -Id "MyId" -Name "MyName"
"DDBOOST"$ProtectionGroup = Initialize-ProtectionGroup -AutoAssignToPolicy $false -BackupStrategy "BACKUP_ALL" -CreatedAt (Get-Date) -Description "MyDescription" -Id "MyId" -LastAvailableCopyTime (Get-Date) -LastDiscoveryStatus "NEW" -MemberAssetType "ORACLE_DATABASE" -Name "MyName" -NaturalIds "MyNaturalIds" -OperatingSystems "MyOperatingSystems" -ProtectionPolicyRef $ProtectionGroupProtectionPolicyRef -ProtectionStatus "PROTECTED" -Subtype "GENERIC" -SupportedProtectionProtocols 
$ProtectionGroupProtectionPolicyRef = Initialize-ProtectionGroupProtectionPolicyRef -BackupMechanism "SBT" -Id "MyId" -Name "MyName"
"DDBOOST" -Type "ORACLE_DATA_GUARD" -UpdatedAt (Get-Date) # ProtectionGroup |  (optional)

# Create a protection group
try {
    $Result = New-ProtectionGroup -ProtectionGroup $ProtectionGroup
} catch {
    Write-Host ("Exception occurred when calling New-ProtectionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionGroup** | [**ProtectionGroup**](ProtectionGroup.md)|  | [optional] 

### Return type

[**ProtectionGroup**](ProtectionGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ProtectionRule"></a>
# **New-ProtectionRule**
> ProtectionRule New-ProtectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRule] <PSCustomObject><br>

Create a protection rule

Create a protection rule. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$EmbeddedProtectionPolicy = Initialize-EmbeddedProtectionPolicy -BackupMechanism "SBT" -BackupRank 0 -Id "MyId" -Name "MyName" -ProtectionEngine "MyProtectionEngine" -Type "MyType"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$AssetEmbedded = Initialize-AssetEmbedded -ProtectionPolicy $EmbeddedProtectionPolicy -ProtectionlifeCycle $EmbeddedProtectionPolicy -StorageSystem $EmbeddedIdName

$Condition = Initialize-Condition -AssetAttributeName "MyAssetAttributeName" -AssetAttributeValue "MyAssetAttributeValue" -AssetAttributeValues "MyAssetAttributeValues" -Operator "IN"
$Id = Initialize-Id -Id "MyId"
$ProtectionRule = Initialize-ProtectionRule -Embedded $AssetEmbedded -Action "MOVE_TO_GROUP" -ActionResult "MyActionResult" -AssignedAssetsCount 0 -Category "PRIMITIVE" -ConditionConnector "AND" -Conditions $Condition -Description "MyDescription" -DisplayDescription "MyDisplayDescription" -Id "MyId" -InventorySourceType "CLOUD_NATIVE_ENTITY" -LastRunAt (Get-Date) -LogicalOperator "AND" -ManagedBy "PROTECTION_POLICY" -Name "MyName" -Priority 0 -Rules $ProtectionRule -Tenant $Id # ProtectionRule |  (optional)

# Create a protection rule
try {
    $Result = New-ProtectionRule -ProtectionRule $ProtectionRule
} catch {
    Write-Host ("Exception occurred when calling New-ProtectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionRule** | [**ProtectionRule**](ProtectionRule.md)|  | [optional] 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ProtectionRulesConflictsPreview"></a>
# **New-ProtectionRulesConflictsPreview**
> ProtectionRules New-ProtectionRulesConflictsPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRulesConflictPreviewRequest] <PSCustomObject><br>

Get the preview of all other protection rules having asset assignment conflict with the given protection rule

Create the preview of all other protection rules having asset assignment conflict with the given protection rule. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$EmbeddedProtectionPolicy = Initialize-EmbeddedProtectionPolicy -BackupMechanism "SBT" -BackupRank 0 -Id "MyId" -Name "MyName" -ProtectionEngine "MyProtectionEngine" -Type "MyType"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$AssetEmbedded = Initialize-AssetEmbedded -ProtectionPolicy $EmbeddedProtectionPolicy -ProtectionlifeCycle $EmbeddedProtectionPolicy -StorageSystem $EmbeddedIdName

$Condition = Initialize-Condition -AssetAttributeName "MyAssetAttributeName" -AssetAttributeValue "MyAssetAttributeValue" -AssetAttributeValues "MyAssetAttributeValues" -Operator "IN"
$Id = Initialize-Id -Id "MyId"
$ProtectionRule = Initialize-ProtectionRule -Embedded $AssetEmbedded -Action "MOVE_TO_GROUP" -ActionResult "MyActionResult" -AssignedAssetsCount 0 -Category "PRIMITIVE" -ConditionConnector "AND" -Conditions $Condition -Description "MyDescription" -DisplayDescription "MyDisplayDescription" -Id "MyId" -InventorySourceType "CLOUD_NATIVE_ENTITY" -LastRunAt (Get-Date) -LogicalOperator "AND" -ManagedBy "PROTECTION_POLICY" -Name "MyName" -Priority 0 -Rules $ProtectionRule -Tenant $Id

$ProtectionRulesConflictPreviewRequest = Initialize-ProtectionRulesConflictPreviewRequest -PreviewAction "CREATE" -ProtectionRule $ProtectionRule # ProtectionRulesConflictPreviewRequest |  (optional)

# Get the preview of all other protection rules having asset assignment conflict with the given protection rule
try {
    $Result = New-ProtectionRulesConflictsPreview -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -ProtectionRulesConflictPreviewRequest $ProtectionRulesConflictPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling New-ProtectionRulesConflictsPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **ProtectionRulesConflictPreviewRequest** | [**ProtectionRulesConflictPreviewRequest**](ProtectionRulesConflictPreviewRequest.md)|  | [optional] 

### Return type

[**ProtectionRules**](ProtectionRules.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ResourceGroup"></a>
# **New-ResourceGroup**
> ResourceGroup New-ResourceGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceGroupPostRequest] <PSCustomObject><br>

Create a resource group.

Creates a resource group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ResourceGroupPostRequest = Initialize-ResourceGroupPostRequest -Description "MyDescription" -Name "MyName" # ResourceGroupPostRequest |  (optional)

# Create a resource group.
try {
    $Result = New-ResourceGroup -ResourceGroupPostRequest $ResourceGroupPostRequest
} catch {
    Write-Host ("Exception occurred when calling New-ResourceGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceGroupPostRequest** | [**ResourceGroupPostRequest**](ResourceGroupPostRequest.md)|  | [optional] 

### Return type

[**ResourceGroup**](ResourceGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDynamicFilter"></a>
# **Invoke-DeleteDynamicFilter**
> void Invoke-DeleteDynamicFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete dynamic filter by ID

Deletes dynamic filter by specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the dynamic filter.

# Delete dynamic filter by ID
try {
    $Result = Invoke-DeleteDynamicFilter -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDynamicFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the dynamic filter. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteProtectionGroup"></a>
# **Invoke-DeleteProtectionGroup**
> void Invoke-DeleteProtectionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a protection group by ID

Deletes a protection group from PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection group.

# Delete a protection group by ID
try {
    $Result = Invoke-DeleteProtectionGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteProtectionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection group. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteProtectionRule"></a>
# **Invoke-DeleteProtectionRule**
> void Invoke-DeleteProtectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a protection rule by ID

Deletes protection rule by specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection rule.

# Delete a protection rule by ID
try {
    $Result = Invoke-DeleteProtectionRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteProtectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection rule. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteResourceGroup"></a>
# **Invoke-DeleteResourceGroup**
> SystemCollectionsHashtable Invoke-DeleteResourceGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a resource group by ID.

Deletes **Resource Group** by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The resource group ID.

# Delete a resource group by ID.
try {
    $Result = Invoke-DeleteResourceGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteResourceGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The resource group ID. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRule"></a>
# **Invoke-DeleteRule**
> void Invoke-DeleteRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a rule

Remove a rule. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the rule.

# Delete a rule
try {
    $Result = Invoke-DeleteRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the rule. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ExecuteDynamicFilters"></a>
# **Invoke-ExecuteDynamicFilters**
> void Invoke-ExecuteDynamicFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRuleExecution] <PSCustomObject><br>

Execute dynamic filters

Executes dynamic filters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ProtectionRuleExecution = Initialize-ProtectionRuleExecution -AssetRuleIds "MyAssetRuleIds" -InventorySourceType "CLOUD_NATIVE_ENTITY" # ProtectionRuleExecution |  (optional)

# Execute dynamic filters
try {
    $Result = Invoke-ExecuteDynamicFilters -ProtectionRuleExecution $ProtectionRuleExecution
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExecuteDynamicFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionRuleExecution** | [**ProtectionRuleExecution**](ProtectionRuleExecution.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ExecuteProtectionRules"></a>
# **Invoke-ExecuteProtectionRules**
> void Invoke-ExecuteProtectionRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRuleExecution] <PSCustomObject><br>

Execute protection rules

Starts to execute protection rules. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ProtectionRuleExecution = Initialize-ProtectionRuleExecution -AssetRuleIds "MyAssetRuleIds" -InventorySourceType "CLOUD_NATIVE_ENTITY" # ProtectionRuleExecution |  (optional)

# Execute protection rules
try {
    $Result = Invoke-ExecuteProtectionRules -ProtectionRuleExecution $ProtectionRuleExecution
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExecuteProtectionRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionRuleExecution** | [**ProtectionRuleExecution**](ProtectionRuleExecution.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-AssetProtectionDetails"></a>
# **Export-AssetProtectionDetails**
> void Export-AssetProtectionDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Export asset protection details from protection policy as CSV file

Retrieves asset protection details from protection policy. Extracts some fields and exports to CSV file. This API request can include multiple filters, for example, protectionPolicyId, protectionPolicyName, timeRange, and startTime. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Export asset protection details from protection policy as CSV file
try {
    $Result = Export-AssetProtectionDetails -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Export-AssetProtectionDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-Asset"></a>
# **Get-Asset**
> Asset Get-Asset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an asset by ID

Retrieves an asset by its ID. Use this API request to get detailed information about the asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.

# Get an asset by ID
try {
    $Result = Get-Asset -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Asset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 

### Return type

[**Asset**](Asset.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetActiveHosts"></a>
# **Get-AssetActiveHosts**
> Hosts Get-AssetActiveHosts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get active hosts for an asset

Retrieves all active hosts of the asset by the specified asset ID. Whether a host is active is based on the 'active' field in its associated application server. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get active hosts for an asset
try {
    $Result = Get-AssetActiveHosts -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AssetActiveHosts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**Hosts**](Hosts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetCopies"></a>
# **Get-AssetCopies**
> AssetCopies Get-AssetCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get copies for an asset

Retrieves all copies of the asset by the specified asset ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get copies for an asset
try {
    $Result = Get-AssetCopies -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AssetCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**AssetCopies**](AssetCopies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetCopyMap"></a>
# **Get-AssetCopyMap**
> CopyMap Get-AssetCopyMap<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeCopyState] <String><br>

Get copy map for an asset

Retrieves copy map of the specified asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the asset.
$ExcludeCopyState = "MyExcludeCopyState" # String | Exclude copy state.(Input as DELETED,DELETING,DELETE_FAILED,SOFT_DELETED) (optional) (default to "DELETED, SOFT_DELETED")

# Get copy map for an asset
try {
    $Result = Get-AssetCopyMap -Id $Id -ExcludeCopyState $ExcludeCopyState
} catch {
    Write-Host ("Exception occurred when calling Get-AssetCopyMap: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the asset. | 
 **ExcludeCopyState** | **String**| Exclude copy state.(Input as DELETED,DELETING,DELETE_FAILED,SOFT_DELETED) | [optional] [default to &quot;DELETED, SOFT_DELETED&quot;]

### Return type

[**CopyMap**](CopyMap.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetHosts"></a>
# **Get-AssetHosts**
> Hosts Get-AssetHosts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get hosts for an asset

Retrieves all hosts of the asset by the specified asset ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get hosts for an asset
try {
    $Result = Get-AssetHosts -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AssetHosts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**Hosts**](Hosts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSettings"></a>
# **Get-AssetSettings**
> CommonSetting Get-AssetSettings<br>

Get asset settings

Retrieves the current asset settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get asset settings
try {
    $Result = Get-AssetSettings
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-Assets"></a>
# **Get-Assets**
> Assets Get-Assets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get all assets

Retrieves all assets that PowerProtect Data Manager manages. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get all assets
try {
    $Result = Get-Assets -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-Assets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Assets**](Assets.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ChildInfrastructureNodeById"></a>
# **Get-ChildInfrastructureNodeById**
> InfrastructureNodes Get-ChildInfrastructureNodeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParentNodeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyPurpose] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyPurposeKeys] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AncestorNodeId] <String><br>

Get child infrastructure nodes by its parent node ID

Get child infrastructure nodes for the specified infrastructure node. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ParentNodeId = "MyParentNodeId" # String | The parent infrastructure node ID.
$HierarchyType = "MyHierarchyType" # String | Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$HierarchyPurpose = "MyHierarchyPurpose" # String | Indicate the purpose for current API operation. (optional)
$HierarchyPurposeKeys = "MyHierarchyPurposeKeys" # String | Indicate detailed information for hierarchyPurpose (optional)
$FilterType = "MyFilterType" # String | The filter type, only value accepted is INCLUDE_PARENTS_FOR_MATCHED_ITEM. (optional)
$AncestorNodeId = "MyAncestorNodeId" # String | The ancestor node id. This is the protection group ID required for the POWER_MAX_PROTECTION_GROUP_VIEW. (optional)

# Get child infrastructure nodes by its parent node ID
try {
    $Result = Get-ChildInfrastructureNodeById -ParentNodeId $ParentNodeId -HierarchyType $HierarchyType -Page $Page -PageSize $PageSize -Filter $Filter -HierarchyPurpose $HierarchyPurpose -HierarchyPurposeKeys $HierarchyPurposeKeys -FilterType $FilterType -AncestorNodeId $AncestorNodeId
} catch {
    Write-Host ("Exception occurred when calling Get-ChildInfrastructureNodeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ParentNodeId** | **String**| The parent infrastructure node ID. | 
 **HierarchyType** | **String**| Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **HierarchyPurpose** | **String**| Indicate the purpose for current API operation. | [optional] 
 **HierarchyPurposeKeys** | **String**| Indicate detailed information for hierarchyPurpose | [optional] 
 **FilterType** | **String**| The filter type, only value accepted is INCLUDE_PARENTS_FOR_MATCHED_ITEM. | [optional] 
 **AncestorNodeId** | **String**| The ancestor node id. This is the protection group ID required for the POWER_MAX_PROTECTION_GROUP_VIEW. | [optional] 

### Return type

[**InfrastructureNodes**](InfrastructureNodes.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CredentialsUsage"></a>
# **Get-CredentialsUsage**
> CredentialUsage Get-CredentialsUsage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get all the consumers which are using this credential

Get all the consumers which are using this credential Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The credential Id

# Get all the consumers which are using this credential
try {
    $Result = Get-CredentialsUsage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CredentialsUsage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The credential Id | 

### Return type

[**CredentialUsage**](CredentialUsage.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DynamicFilter"></a>
# **Get-DynamicFilter**
> ProtectionRule Get-DynamicFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a dynamic filter by ID

Retrieves a dynamic filter by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the dynamic filter.

# Get a dynamic filter by ID
try {
    $Result = Get-DynamicFilter -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-DynamicFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the dynamic filter. | 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DynamicFilterSettings"></a>
# **Get-DynamicFilterSettings**
> CommonSetting Get-DynamicFilterSettings<br>

Get dynamic filter settings

Retrieves the dynamic filter settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get dynamic filter settings
try {
    $Result = Get-DynamicFilterSettings
} catch {
    Write-Host ("Exception occurred when calling Get-DynamicFilterSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-DynamicFilters"></a>
# **Get-DynamicFilters**
> ProtectionRules Get-DynamicFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all dynamic filters

Retrieves all dynamic filters Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all dynamic filters
try {
    $Result = Get-DynamicFilters -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-DynamicFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ProtectionRules**](ProtectionRules.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Host"></a>
# **Get-Host**
> ModelHost Get-Host<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a host by ID

Retrieves **Hosts** like PRIMARY, GROUP, APP_HOST, ESX_HOST, and ESX_CLUSTER by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the host.

# Get a host by ID
try {
    $Result = Get-Host -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Host: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the host. | 

### Return type

[**ModelHost**](ModelHost.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Hosts"></a>
# **Get-Hosts**
> Hosts Get-Hosts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all hosts

Retrieves all **Hosts** including PRIMARY, GROUP, APP_HOST, ESX_HOST, and ESX_CLUSTER. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all hosts
try {
    $Result = Get-Hosts -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Hosts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Hosts**](Hosts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-InfrastructureNodeById"></a>
# **Get-InfrastructureNodeById**
> InfrastructureNode Get-InfrastructureNodeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyType] <String><br>

Get an infrastructure node by its ID

Get infrastructure node by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The infrastructure node ID.
$HierarchyType = "MyHierarchyType" # String | Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW.

# Get an infrastructure node by its ID
try {
    $Result = Get-InfrastructureNodeById -Id $Id -HierarchyType $HierarchyType
} catch {
    Write-Host ("Exception occurred when calling Get-InfrastructureNodeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The infrastructure node ID. | 
 **HierarchyType** | **String**| Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW. | 

### Return type

[**InfrastructureNode**](InfrastructureNode.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionGroup"></a>
# **Get-ProtectionGroup**
> ProtectionGroup Get-ProtectionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a protection group by ID

Retrieves a protection group by its ID. Use this API request to get detailed information about the protection group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The protection group ID.

# Get a protection group by ID
try {
    $Result = Get-ProtectionGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The protection group ID. | 

### Return type

[**ProtectionGroup**](ProtectionGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionGroupCopyMap"></a>
# **Get-ProtectionGroupCopyMap**
> CopyMap Get-ProtectionGroupCopyMap<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeCopyState] <String><br>

Get copy map for assets in the given protection group

Retrieves copy map of assets in the given protection group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection group.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$ExcludeCopyState = "MyExcludeCopyState" # String | Exclude copy state. (Possible values include: DELETED,DELETING,DELETE_FAILED,SOFT_DELETED) (optional) (default to "DELETED, SOFT_DELETED")

# Get copy map for assets in the given protection group
try {
    $Result = Get-ProtectionGroupCopyMap -Id $Id -Filter $Filter -ExcludeCopyState $ExcludeCopyState
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionGroupCopyMap: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection group. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **ExcludeCopyState** | **String**| Exclude copy state. (Possible values include: DELETED,DELETING,DELETE_FAILED,SOFT_DELETED) | [optional] [default to &quot;DELETED, SOFT_DELETED&quot;]

### Return type

[**CopyMap**](CopyMap.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionGroups"></a>
# **Get-ProtectionGroups**
> ProtectionGroups Get-ProtectionGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all protection groups

Retrieves all protection groups that PowerProtect Data Manager manages. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all protection groups
try {
    $Result = Get-ProtectionGroups -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ProtectionGroups**](ProtectionGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionRule"></a>
# **Get-ProtectionRule**
> ProtectionRule Get-ProtectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a protection rule by ID

Retrieves a protection rule by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection rule.

# Get a protection rule by ID
try {
    $Result = Get-ProtectionRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection rule. | 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionRules"></a>
# **Get-ProtectionRules**
> ProtectionRules Get-ProtectionRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all protection rules

Retrieves all created protection rules. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all protection rules
try {
    $Result = Get-ProtectionRules -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ProtectionRules**](ProtectionRules.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ResourceGroupById"></a>
# **Get-ResourceGroupById**
> ResourceGroup Get-ResourceGroupById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a resource group by its ID.

Retrieves a resource group by its ID. Use this API request to get detailed information about the resource group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The resource group ID.

# Get a resource group by its ID.
try {
    $Result = Get-ResourceGroupById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ResourceGroupById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The resource group ID. | 

### Return type

[**ResourceGroup**](ResourceGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ResourceGroups"></a>
# **Get-ResourceGroups**
> ResourceGroups Get-ResourceGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Accept] <String><br>

Get all resource groups.

Retrieves all available resource groups. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Accept = "MyAccept" # String | text/csv, application/json (optional)

# Get all resource groups.
try {
    $Result = Get-ResourceGroups -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -Accept $Accept
} catch {
    Write-Host ("Exception occurred when calling Get-ResourceGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Accept** | **String**| text/csv, application/json | [optional] 

### Return type

[**ResourceGroups**](ResourceGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RootInfrastructureNodes"></a>
# **Get-RootInfrastructureNodes**
> InfrastructureNodes Get-RootInfrastructureNodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyPurpose] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HierarchyPurposeKeys] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterType] <String><br>

Get root infrastructure nodes for the specified hierarchy type

Get root infrastructure nodes for the specified hierarchy type. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$HierarchyType = "MyHierarchyType" # String | Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$HierarchyPurpose = "MyHierarchyPurpose" # String | Indicate the purpose for current API operation. (optional)
$HierarchyPurposeKeys = "MyHierarchyPurposeKeys" # String | Indicate detailed information for hierarchyPurpose (optional)
$FilterType = "MyFilterType" # String | The filter type, only value accepted is INCLUDE_PARENTS_FOR_MATCHED_ITEM. (optional)

# Get root infrastructure nodes for the specified hierarchy type
try {
    $Result = Get-RootInfrastructureNodes -HierarchyType $HierarchyType -Filter $Filter -HierarchyPurpose $HierarchyPurpose -HierarchyPurposeKeys $HierarchyPurposeKeys -FilterType $FilterType
} catch {
    Write-Host ("Exception occurred when calling Get-RootInfrastructureNodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HierarchyType** | **String**| Indicates the hierarchy type of the infrastructure node. The valid values are: MICROSOFT_SQL_DATABASE_VIEW, FILE_SYSTEM_VIEW, VMWARE_VIRTUAL_MACHINE_HOST_VIEW, VMWARE_VIRTUAL_MACHINE_FOLDER_VIEW, ORACLE_DATA_GUARD_VIEW, POWERSTORE_PROTECTION_GROUP_VIEW, and POWER_MAX_STORAGE_SYSTEM_VIEW. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **HierarchyPurpose** | **String**| Indicate the purpose for current API operation. | [optional] 
 **HierarchyPurposeKeys** | **String**| Indicate detailed information for hierarchyPurpose | [optional] 
 **FilterType** | **String**| The filter type, only value accepted is INCLUDE_PARENTS_FOR_MATCHED_ITEM. | [optional] 

### Return type

[**InfrastructureNodes**](InfrastructureNodes.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Rule"></a>
# **Get-Rule**
> Rule Get-Rule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a single rule

Retrieve a rule. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the rule.

# Get a single rule
try {
    $Result = Get-Rule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Rule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the rule. | 

### Return type

[**Rule**](Rule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Rules"></a>
# **Get-Rules**
> Rule Get-Rules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get a list of rules

Retrieves a list of rules. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get a list of rules
try {
    $Result = Get-Rules -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Rules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Rule**](Rule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-VmBackupSettings"></a>
# **Get-VmBackupSettings**
> CommonSetting Get-VmBackupSettings<br>

Get VM backup settings

Retrieves the VM backup settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get VM backup settings
try {
    $Result = Get-VmBackupSettings
} catch {
    Write-Host ("Exception occurred when calling Get-VmBackupSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="ConvertTo-itiateAgentInstallationOnVm"></a>
# **ConvertTo-itiateAgentInstallationOnVm**
> VmAgentInstallationResponse ConvertTo-itiateAgentInstallationOnVm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VmAgentInstallationRequest] <PSCustomObject><br>

Initiate agent installation on VM asset

Initiates agent installation on selected VM asset. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VmAgentInstallationRequest = Initialize-VmAgentInstallationRequest -ApplicationType "MSSQL" -VmAssetId "MyVmAssetId" # VmAgentInstallationRequest |  (optional)

# Initiate agent installation on VM asset
try {
    $Result = ConvertTo-itiateAgentInstallationOnVm -VmAgentInstallationRequest $VmAgentInstallationRequest
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-itiateAgentInstallationOnVm: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VmAgentInstallationRequest** | [**VmAgentInstallationRequest**](VmAgentInstallationRequest.md)|  | [optional] 

### Return type

[**VmAgentInstallationResponse**](VmAgentInstallationResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchProtectionGroup"></a>
# **Invoke-PatchProtectionGroup**
> ProtectionGroup Invoke-PatchProtectionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionGroup] <PSCustomObject><br>

Patch a protection group

Patches the specified protection group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The protection group ID.
$ProtectionGroupProtectionPolicyRef = Initialize-ProtectionGroupProtectionPolicyRef -BackupMechanism "SBT" -Id "MyId" -Name "MyName"
"DDBOOST"$ProtectionGroup = Initialize-ProtectionGroup -AutoAssignToPolicy $false -BackupStrategy "BACKUP_ALL" -CreatedAt (Get-Date) -Description "MyDescription" -Id "MyId" -LastAvailableCopyTime (Get-Date) -LastDiscoveryStatus "NEW" -MemberAssetType "ORACLE_DATABASE" -Name "MyName" -NaturalIds "MyNaturalIds" -OperatingSystems "MyOperatingSystems" -ProtectionPolicyRef $ProtectionGroupProtectionPolicyRef -ProtectionStatus "PROTECTED" -Subtype "GENERIC" -SupportedProtectionProtocols 
$ProtectionGroupProtectionPolicyRef = Initialize-ProtectionGroupProtectionPolicyRef -BackupMechanism "SBT" -Id "MyId" -Name "MyName"
"DDBOOST" -Type "ORACLE_DATA_GUARD" -UpdatedAt (Get-Date) # ProtectionGroup |  (optional)

# Patch a protection group
try {
    $Result = Invoke-PatchProtectionGroup -Id $Id -ProtectionGroup $ProtectionGroup
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchProtectionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The protection group ID. | 
 **ProtectionGroup** | [**ProtectionGroup**](ProtectionGroup.md)|  | [optional] 

### Return type

[**ProtectionGroup**](ProtectionGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchRule"></a>
# **Invoke-PatchRule**
> Rule Invoke-PatchRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulePatchBody] <PSCustomObject><br>

Update a rule

The only property that can be patched is the ""name"" property. The other fields are used for generating the ""id"" property and must remain fixed. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the rule.
$RulePatchBody = Initialize-RulePatchBody -Id "MyId" -Name "MyName" # RulePatchBody |  (optional)

# Update a rule
try {
    $Result = Invoke-PatchRule -Id $Id -RulePatchBody $RulePatchBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the rule. | 
 **RulePatchBody** | [**RulePatchBody**](RulePatchBody.md)|  | [optional] 

### Return type

[**Rule**](Rule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-AssetsDeletionBatch"></a>
# **Submit-AssetsDeletionBatch**
> void Submit-AssetsDeletionBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetsBatchDeletionRequests] <PSCustomObject><br>

Delete multiple assets in batch

Delete multiple assets in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AssetsBatchDeletionRequestBodyOptions = Initialize-AssetsBatchDeletionRequestBodyOptions -Level "DELETE_ASSET_AND_COPIES"
$AssetsBatchDeletionRequestBody = Initialize-AssetsBatchDeletionRequestBody -Id "MyId" -Options $AssetsBatchDeletionRequestBodyOptions

$AssetsBatchDeletionRequest = Initialize-AssetsBatchDeletionRequest -Body $AssetsBatchDeletionRequestBody -Id "MyId"

$AssetsBatchDeletionRequests = Initialize-AssetsBatchDeletionRequests -Requests $AssetsBatchDeletionRequest # AssetsBatchDeletionRequests |  (optional)

# Delete multiple assets in batch
try {
    $Result = Submit-AssetsDeletionBatch -AssetsBatchDeletionRequests $AssetsBatchDeletionRequests
} catch {
    Write-Host ("Exception occurred when calling Submit-AssetsDeletionBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetsBatchDeletionRequests** | [**AssetsBatchDeletionRequests**](AssetsBatchDeletionRequests.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-CredentialsDeletionBatch"></a>
# **Submit-CredentialsDeletionBatch**
> void Submit-CredentialsDeletionBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialsBatchDeletionRequest] <PSCustomObject><br>

Delete multiple credentials in batch

Delete multiple credentials in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CredentialsBatchDeletionRequestBody = Initialize-CredentialsBatchDeletionRequestBody -Id "MyId"
$CredentialsBatchDeletionRequestRequests = Initialize-CredentialsBatchDeletionRequestRequests -Body $CredentialsBatchDeletionRequestBody -Id "MyId"

$CredentialsBatchDeletionRequest = Initialize-CredentialsBatchDeletionRequest -Requests $CredentialsBatchDeletionRequestRequests # CredentialsBatchDeletionRequest |  (optional)

# Delete multiple credentials in batch
try {
    $Result = Submit-CredentialsDeletionBatch -CredentialsBatchDeletionRequest $CredentialsBatchDeletionRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-CredentialsDeletionBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CredentialsBatchDeletionRequest** | [**CredentialsBatchDeletionRequest**](CredentialsBatchDeletionRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-Rule"></a>
# **Submit-Rule**
> Rule Submit-Rule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulePostBody] <PSCustomObject><br>

Create a rule to associate filter to assign a resource group

Create a rule to assign a resource group when a filter matches. The ""id"" property is created from the action, actionArgs (sorted alphabetically), and filter.id properties. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ActionArg = Initialize-ActionArg -Name "RESOURCE_GROUP_ID" -Values "MyValues"

$FilterCondition = Initialize-FilterCondition -FieldName "MyFieldName" -Operator "IN" -Values "MyValues"

$ModelFilter = Initialize-ModelFilter -AssetCount 0 -Category "PRIMITIVE" -Conditions $FilterCondition -CreatedAt (Get-Date) -Description "MyDescription" -FilterType "EXCLUDE" -Filters $ModelFilter -Id "MyId" -LastRunAt (Get-Date) -LogicalOperator "AND" -Name "MyName" -ObjectSubtype "VMWARE_VIRTUAL_MACHINE" -ObjectType "FILE_SYSTEM_FILE" -Priority 0 -ProtectionPolicyCount 0 -Purpose "FILE_BACKUP_FILTER" -TemplateName "MyTemplateName" -UpdatedAt (Get-Date)

$FilterRef = Initialize-FilterRef -Category "PRIMITIVE" -Conditions $FilterCondition -FilterType "EXCLUDE" -Filters $ModelFilter -Id "MyId" -LogicalOperator "AND" -Name "MyName" -ObjectSubtype "VMWARE_VIRTUAL_MACHINE" -ObjectType "FILE_SYSTEM_FILE" -Priority 0 -Purpose "FILE_BACKUP_FILTER" -TemplateName "MyTemplateName"

$RulePostBody = Initialize-RulePostBody -Action "ASSIGN_RESOURCE_GROUP" -ActionArgs $ActionArg -FilterRef $FilterRef -LastRunAt (Get-Date) -Name "MyName" # RulePostBody |  (optional)

# Create a rule to associate filter to assign a resource group
try {
    $Result = Submit-Rule -RulePostBody $RulePostBody
} catch {
    Write-Host ("Exception occurred when calling Submit-Rule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RulePostBody** | [**RulePostBody**](RulePostBody.md)|  | [optional] 

### Return type

[**Rule**](Rule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ResourceAssignmentsBatch"></a>
# **Invoke-ResourceAssignmentsBatch**
> ResourceGroupsBatchCreateResponses Invoke-ResourceAssignmentsBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceBatchRequest] <PSCustomObject><br>

Assign resources into resource groups

Assign multiple resources into resource group in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the resource group to which the resources in the request body are assigned.
$ResourceGroupRuleFilter = Initialize-ResourceGroupRuleFilter -Id "MyId" -Name "MyName" -TemplateName "MyTemplateName"
$ResourceGroupRule = Initialize-ResourceGroupRule -VarFilter $ResourceGroupRuleFilter -Id "MyId" -Name "MyName"

$ResourceBatchRequestBody = Initialize-ResourceBatchRequestBody -ResourceId "MyResourceId" -ResourceType "ASSET" -Rule $ResourceGroupRule

$ResourceBatchRequestRequests = Initialize-ResourceBatchRequestRequests -Body $ResourceBatchRequestBody -Id "MyId"

$ResourceBatchRequest = Initialize-ResourceBatchRequest -Requests $ResourceBatchRequestRequests # ResourceBatchRequest |  (optional)

# Assign resources into resource groups
try {
    $Result = Invoke-ResourceAssignmentsBatch -Id $Id -ResourceBatchRequest $ResourceBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ResourceAssignmentsBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the resource group to which the resources in the request body are assigned. | 
 **ResourceBatchRequest** | [**ResourceBatchRequest**](ResourceBatchRequest.md)|  | [optional] 

### Return type

[**ResourceGroupsBatchCreateResponses**](ResourceGroupsBatchCreateResponses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ResourceUnassignmentsBatch"></a>
# **Invoke-ResourceUnassignmentsBatch**
> ResourceGroupsBatchCreateResponses Invoke-ResourceUnassignmentsBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceBatchRequest] <PSCustomObject><br>

Unassign resources from resource groups

Unassign multiple resources from resource group in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the resource group from which the resources in the request body are unassigned.
$ResourceGroupRuleFilter = Initialize-ResourceGroupRuleFilter -Id "MyId" -Name "MyName" -TemplateName "MyTemplateName"
$ResourceGroupRule = Initialize-ResourceGroupRule -VarFilter $ResourceGroupRuleFilter -Id "MyId" -Name "MyName"

$ResourceBatchRequestBody = Initialize-ResourceBatchRequestBody -ResourceId "MyResourceId" -ResourceType "ASSET" -Rule $ResourceGroupRule

$ResourceBatchRequestRequests = Initialize-ResourceBatchRequestRequests -Body $ResourceBatchRequestBody -Id "MyId"

$ResourceBatchRequest = Initialize-ResourceBatchRequest -Requests $ResourceBatchRequestRequests # ResourceBatchRequest |  (optional)

# Unassign resources from resource groups
try {
    $Result = Invoke-ResourceUnassignmentsBatch -Id $Id -ResourceBatchRequest $ResourceBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ResourceUnassignmentsBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the resource group from which the resources in the request body are unassigned. | 
 **ResourceBatchRequest** | [**ResourceBatchRequest**](ResourceBatchRequest.md)|  | [optional] 

### Return type

[**ResourceGroupsBatchCreateResponses**](ResourceGroupsBatchCreateResponses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RunRules"></a>
# **Invoke-RunRules**
> Rule Invoke-RunRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Run a single rule

All filters are either previously created or automatically generated. Users create rules to associate a resource group with a filter (either previously created or automatically generated). This API is run when assets and resource groups are impacted (discovery, association, and so on.) Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the rule.

# Run a single rule
try {
    $Result = Invoke-RunRules -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-RunRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the rule. | 

### Return type

[**Rule**](Rule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnassignResourceGroupByCriteria"></a>
# **Invoke-UnassignResourceGroupByCriteria**
> void Invoke-UnassignResourceGroupByCriteria<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceGroupUnassignmentByCriteria] <PSCustomObject><br>

Unassigning resource group by asset type

Given a resource group ID and a list of asset types, the resource group is unassigned from the assets that match those types. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

"CLOUD_NATIVE_ENTITY"$ResourceGroupUnassignmentByCriteria = Initialize-ResourceGroupUnassignmentByCriteria -AssetTypes "CLOUD_NATIVE_ENTITY" -ResourceGroupId "MyResourceGroupId" # ResourceGroupUnassignmentByCriteria |  (optional)

# Unassigning resource group by asset type
try {
    $Result = Invoke-UnassignResourceGroupByCriteria -ResourceGroupUnassignmentByCriteria $ResourceGroupUnassignmentByCriteria
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignResourceGroupByCriteria: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceGroupUnassignmentByCriteria** | [**ResourceGroupUnassignmentByCriteria**](ResourceGroupUnassignmentByCriteria.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Asset"></a>
# **Update-Asset**
> Asset Update-Asset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutAssetRequest] <PSCustomObject><br>

Update asset credential ID

Updates the credential ID for the specified asset. If the asset is of type VMWARE_VIRTUAL_MACHINE, the dataMoverType can also be updated. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$PutAssetRequestVmAttribute = Initialize-PutAssetRequestVmAttribute -DataMoverType "INHERIT_FROM_POLICY"
$PutAssetRequestDetails = Initialize-PutAssetRequestDetails -Vm $PutAssetRequestVmAttribute

$PutAssetRequest = Initialize-PutAssetRequest -CredentialId "MyCredentialId" -Details $PutAssetRequestDetails -Id "MyId" -Type "VMWARE_VIRTUAL_MACHINE" # PutAssetRequest |  (optional)

# Update asset credential ID
try {
    $Result = Update-Asset -Id $Id -PutAssetRequest $PutAssetRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Asset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **PutAssetRequest** | [**PutAssetRequest**](PutAssetRequest.md)|  | [optional] 

### Return type

[**Asset**](Asset.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetExcludeDisk"></a>
# **Update-AssetExcludeDisk**
> Asset Update-AssetExcludeDisk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchAssetRequest] <PSCustomObject><br>

Set disks excluded status of an asset

Sends patch request to update certain asset fields including the VM disk excluded status. Each patch request sets only one asset by the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The asset ID.
$AssetBackupDetails = Initialize-AssetBackupDetails -BackupType "SYNTHETIC_FULL" -Parallelism 0

$ExtraParams = Initialize-ExtraParams -Name "MyName" -Value "MyValue"
$ClusterNodeDetails = Initialize-ClusterNodeDetails -BackupDetails $AssetBackupDetails -ExtraParams $ExtraParams -Hostname "MyHostname" -Id "MyId"

$AssetClusterBackupDetail = Initialize-AssetClusterBackupDetail -Nodes $ClusterNodeDetails -StreamDistributionType "DISTRIBUTE_STREAMS"

$PatchAssetRequestCredentials = Initialize-PatchAssetRequestCredentials -Id "MyId" -Type "OS"
$PatchAssetRequestDdOptions = Initialize-PatchAssetRequestDdOptions -DisableDdboostWriteCompression $false

$PatchAssetDetailsDatabaseNfsShare = Initialize-PatchAssetDetailsDatabaseNfsShare -Name "MyName" -Version "MyVersion"
$PatchAssetDatabase = Initialize-PatchAssetDatabase -NfsShare $PatchAssetDetailsDatabaseNfsShare -RelativeNFSDirectory "MyRelativeNFSDirectory" -RelativeWorkingDirectory "MyRelativeWorkingDirectory"

$PatchAssetExcludeGenericVmDisks = Initialize-PatchAssetExcludeGenericVmDisks -Excluded $false -Name "MyName"
$PatchAssetGenericVm = Initialize-PatchAssetGenericVm -Disks $PatchAssetExcludeGenericVmDisks

$PatchAssetRequestPersistentVolumeClaim = Initialize-PatchAssetRequestPersistentVolumeClaim -Excluded $false
$PatchAssetRequestKubernetesAttribute = Initialize-PatchAssetRequestKubernetesAttribute -PersistentVolumeClaim $PatchAssetRequestPersistentVolumeClaim

$PatchAssetNas = Initialize-PatchAssetNas -PrefetcherEnabled $false

$PatchAssetRequestExcludeDisksDetailsVmDisks = Initialize-PatchAssetRequestExcludeDisksDetailsVmDisks -Excluded $false -Key 0 -Name "MyName"
$PatchAssetRequestVmAttribute = Initialize-PatchAssetRequestVmAttribute -DataMoverType "INHERIT_FROM_POLICY" -DisableCbt $false -DisableQuiescing $false -Disks $PatchAssetRequestExcludeDisksDetailsVmDisks

$PatchAssetRequestDetails = Initialize-PatchAssetRequestDetails -Database $PatchAssetDatabase -GenericVm $PatchAssetGenericVm -K8s $PatchAssetRequestKubernetesAttribute -NasShare $PatchAssetNas -Vm $PatchAssetRequestVmAttribute

$AssetExtendedDataNfsShare = Initialize-AssetExtendedDataNfsShare -Name "MyName" -Version "MyVersion"
$AssetExtendedData = Initialize-AssetExtendedData -AdsFileBackupEnabled $false -AlternateDestinationPath "MyAlternateDestinationPath" -ChangeFileListEnabled $false -ContinueOnFileNameLenLimitReached $false -DepthLimit 0 -EnableNasFsApiScan $false -FailedBackupRetryCount 0 -MaxSliceFolderCount 0 -NfsShare $AssetExtendedDataNfsShare -OverrideExisting $false -PreviousSliceFileCount 0 -PreviousSliceSize 0 -RelativeWorkingDirectory "MyRelativeWorkingDirectory" -SkipFilesWithNameLenLimitReached $false -SliceFileCount 0 -SliceSize 0 -UpdateTimeOut 0

$AssetPreferredHostRef = Initialize-AssetPreferredHostRef -Id "MyId" -Name "MyName"
$BatchUpdateAssetRequestBodyProtectionGroupRef = Initialize-BatchUpdateAssetRequestBodyProtectionGroupRef -Id "MyId" -MemberRole "GENERIC"
$PatchAssetRequestProtectionPolicy = Initialize-PatchAssetRequestProtectionPolicy -BackupRank 0 -Id "MyId"
$PatchAssetRequest = Initialize-PatchAssetRequest -BackupBranch 0 -BackupDetails $AssetBackupDetails -ClusterBackupDetail $AssetClusterBackupDetail -CredentialId "MyCredentialId" -Credentials $PatchAssetRequestCredentials -DdOptions $PatchAssetRequestDdOptions -Description "MyDescription" -Details $PatchAssetRequestDetails -ExtendedData $AssetExtendedData -Id "MyId" -IncludedInNestedBackup $false -LastAvailableCopyTime (Get-Date) -NestedBackupScope "WHOLE" -PreferredHostRef $AssetPreferredHostRef -PromoteToFull $false -ProtectionGroupRef $BatchUpdateAssetRequestBodyProtectionGroupRef -ProtectionPolicy $PatchAssetRequestProtectionPolicy -ProtectionProtocol "BOOSTFS" # PatchAssetRequest |  (optional)

# Set disks excluded status of an asset
try {
    $Result = Update-AssetExcludeDisk -Id $Id -PatchAssetRequest $PatchAssetRequest
} catch {
    Write-Host ("Exception occurred when calling Update-AssetExcludeDisk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The asset ID. | 
 **PatchAssetRequest** | [**PatchAssetRequest**](PatchAssetRequest.md)|  | [optional] 

### Return type

[**Asset**](Asset.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetSettings"></a>
# **Update-AssetSettings**
> CommonSetting Update-AssetSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Modify asset settings

Modify the current asset settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Modify asset settings
try {
    $Result = Update-AssetSettings -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-AssetSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-DynamicFilter"></a>
# **Update-DynamicFilter**
> ProtectionRule Update-DynamicFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRule] <PSCustomObject><br>

Update a dynamic filter by ID

Update dynamic filter by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the dynamic filter.
$EmbeddedProtectionPolicy = Initialize-EmbeddedProtectionPolicy -BackupMechanism "SBT" -BackupRank 0 -Id "MyId" -Name "MyName" -ProtectionEngine "MyProtectionEngine" -Type "MyType"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$AssetEmbedded = Initialize-AssetEmbedded -ProtectionPolicy $EmbeddedProtectionPolicy -ProtectionlifeCycle $EmbeddedProtectionPolicy -StorageSystem $EmbeddedIdName

$Condition = Initialize-Condition -AssetAttributeName "MyAssetAttributeName" -AssetAttributeValue "MyAssetAttributeValue" -AssetAttributeValues "MyAssetAttributeValues" -Operator "IN"
$Id = Initialize-Id -Id "MyId"
$ProtectionRule = Initialize-ProtectionRule -Embedded $AssetEmbedded -Action "MOVE_TO_GROUP" -ActionResult "MyActionResult" -AssignedAssetsCount 0 -Category "PRIMITIVE" -ConditionConnector "AND" -Conditions $Condition -Description "MyDescription" -DisplayDescription "MyDisplayDescription" -Id "MyId" -InventorySourceType "CLOUD_NATIVE_ENTITY" -LastRunAt (Get-Date) -LogicalOperator "AND" -ManagedBy "PROTECTION_POLICY" -Name "MyName" -Priority 0 -Rules $ProtectionRule -Tenant $Id # ProtectionRule |  (optional)

# Update a dynamic filter by ID
try {
    $Result = Update-DynamicFilter -Id $Id -ProtectionRule $ProtectionRule
} catch {
    Write-Host ("Exception occurred when calling Update-DynamicFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the dynamic filter. | 
 **ProtectionRule** | [**ProtectionRule**](ProtectionRule.md)|  | [optional] 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DynamicFilterSettings"></a>
# **Update-DynamicFilterSettings**
> CommonSetting Update-DynamicFilterSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update dynamic filter settings

Updates the dynamic filter settings (known as protection rules in the PowerProtect Data Manager UI).  PowerProtect Data Manager supports migrating any assets across protection policies by default. If you want to migrate only *unprotected* assets across protection policies, remove the ""value"" from the supportMoveAssetsAcrossProtectionPolicy property when forming the request. Using the ""VMWARE_VIRTUAL_MACHINE"" value as an example, if you want to enable migrating only *unprotected* VMs across protection policies, remove the value ""VMWARE_VIRTUAL_MACHINE."" Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update dynamic filter settings
try {
    $Result = Update-DynamicFilterSettings -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-DynamicFilterSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-Host"></a>
# **Update-Host**
> ModelHost Update-Host<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModelHost] <PSCustomObject><br>

Update host credential and TNS values by ID

Update credential and TNS for host by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the host.
$Addresses = Initialize-Addresses -Ipv4 "MyIpv4" -Ipv6 "MyIpv6" -Wwpn "MyWwpn"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"

$AppHostAgent = Initialize-AppHostAgent -Version "MyVersion"
$AppHostAppServer = Initialize-AppHostAppServer -DatabaseCount 0 -Name "MyName"

$AppHostInstalledApplications = Initialize-AppHostInstalledApplications -Name "MyName" -Type "DIRECTORY_SERVICES" -Version "MyVersion"
$AppHostApplicationsOfInterest = Initialize-AppHostApplicationsOfInterest -InstalledApplications $AppHostInstalledApplications -Name "MyName" -PushHostCredential $false -Type "MSSQL" -UpdateCapable $false -Version "MyVersion"

$ConnectionInfo = Initialize-ConnectionInfo -CredentialId "MyCredentialId" -TnsAdmin "MyTnsAdmin" -TnsName "MyTnsName" -Type "OS"

$RmanProperties = Initialize-RmanProperties -RmanCredentialId "MyRmanCredentialId" -RmanTnsAdmin "MyRmanTnsAdmin" -RmanTnsName "MyRmanTnsName"
$OracleDBProperties = Initialize-OracleDBProperties -RmanProperties $RmanProperties -TnsAdmin "MyTnsAdmin" -TnsName "MyTnsName"

"MSSQL"$ThrottlingConfig = Initialize-ThrottlingConfig -BackupMaxCpuPercentage 0
$AppHost = Initialize-AppHost -Agent $AppHostAgent -AppServers $AppHostAppServer -ApplicationsOfInterest $AppHostApplicationsOfInterest -DbConnection $ConnectionInfo -DbCredentialId "MyDbCredentialId" -OracleDBProperties $OracleDBProperties -Os "MyOs" -Phase "NONE" -ProtectionEngineFlow "VMDIRECT" -RmanConnection $ConnectionInfo -SubTypes 
$AppHostAgent = Initialize-AppHostAgent -Version "MyVersion"
$AppHostAppServer = Initialize-AppHostAppServer -DatabaseCount 0 -Name "MyName"

$AppHostInstalledApplications = Initialize-AppHostInstalledApplications -Name "MyName" -Type "DIRECTORY_SERVICES" -Version "MyVersion"
$AppHostApplicationsOfInterest = Initialize-AppHostApplicationsOfInterest -InstalledApplications $AppHostInstalledApplications -Name "MyName" -PushHostCredential $false -Type "MSSQL" -UpdateCapable $false -Version "MyVersion"

$ConnectionInfo = Initialize-ConnectionInfo -CredentialId "MyCredentialId" -TnsAdmin "MyTnsAdmin" -TnsName "MyTnsName" -Type "OS"

$RmanProperties = Initialize-RmanProperties -RmanCredentialId "MyRmanCredentialId" -RmanTnsAdmin "MyRmanTnsAdmin" -RmanTnsName "MyRmanTnsName"
$OracleDBProperties = Initialize-OracleDBProperties -RmanProperties $RmanProperties -TnsAdmin "MyTnsAdmin" -TnsName "MyTnsName"

"MSSQL" -ThrottlingConfig $ThrottlingConfig

$NetworkMoref = Initialize-NetworkMoref -Moref "MyMoref" -Name "MyName"
$EsxCluster = Initialize-EsxCluster -ClusterMoref "MyClusterMoref" -Networks $NetworkMoref -VCenterUuid "MyVCenterUuid"

$RPAConnectivity = Initialize-RPAConnectivity -RpaUid 0 -Status "OK"
$SplitterInfo = Initialize-SplitterInfo -NumberOfAttachedRPAClusters 0 -RpaConnectivityInfo $RPAConnectivity -Status "MyStatus" -Uid "MyUid" -Version "MyVersion"

$EsxHost = Initialize-EsxHost -ConfigScratchLocation "MyConfigScratchLocation" -HostMoref "MyHostMoref" -HostUuid "MyHostUuid" -HostVersion "MyHostVersion" -Networks $NetworkMoref -ScsiAdapter $false -SplitterInfo $SplitterInfo -VCenterUuid "MyVCenterUuid"

$HostDetails = Initialize-HostDetails -AppHost $AppHost -EsxCluster $EsxCluster -EsxHost $EsxHost

$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
$ModelHost = Initialize-ModelHost -Addresses $Addresses -Cluster $EmbeddedIdName -CreatedBy "LOCAL" -Details $HostDetails -Hostname "MyHostname" -Id "MyId" -IncludedInDiscovery $false -InventorySourceId "MyInventorySourceId" -LastDiscovered "MyLastDiscovered" -LastDiscoveryAt (Get-Date) -LastDiscoveryResult $DiscoveryResult -LastDiscoveryStatus "MyLastDiscoveryStatus" -LastDiscoveryTaskId "MyLastDiscoveryTaskId" -LastUpdated "MyLastUpdated" -Name "MyName" -Status "AVAILABLE" -Type "PRIMARY" # ModelHost |  (optional)

# Update host credential and TNS values by ID
try {
    $Result = Update-Host -Id $Id -ModelHost $ModelHost
} catch {
    Write-Host ("Exception occurred when calling Update-Host: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the host. | 
 **ModelHost** | [**ModelHost**](ModelHost.md)|  | [optional] 

### Return type

[**ModelHost**](ModelHost.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ProtectionRule"></a>
# **Update-ProtectionRule**
> ProtectionRule Update-ProtectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionRule] <PSCustomObject><br>

Update a protection rule by ID

Update protection rule by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection rule.
$EmbeddedProtectionPolicy = Initialize-EmbeddedProtectionPolicy -BackupMechanism "SBT" -BackupRank 0 -Id "MyId" -Name "MyName" -ProtectionEngine "MyProtectionEngine" -Type "MyType"
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$AssetEmbedded = Initialize-AssetEmbedded -ProtectionPolicy $EmbeddedProtectionPolicy -ProtectionlifeCycle $EmbeddedProtectionPolicy -StorageSystem $EmbeddedIdName

$Condition = Initialize-Condition -AssetAttributeName "MyAssetAttributeName" -AssetAttributeValue "MyAssetAttributeValue" -AssetAttributeValues "MyAssetAttributeValues" -Operator "IN"
$Id = Initialize-Id -Id "MyId"
$ProtectionRule = Initialize-ProtectionRule -Embedded $AssetEmbedded -Action "MOVE_TO_GROUP" -ActionResult "MyActionResult" -AssignedAssetsCount 0 -Category "PRIMITIVE" -ConditionConnector "AND" -Conditions $Condition -Description "MyDescription" -DisplayDescription "MyDisplayDescription" -Id "MyId" -InventorySourceType "CLOUD_NATIVE_ENTITY" -LastRunAt (Get-Date) -LogicalOperator "AND" -ManagedBy "PROTECTION_POLICY" -Name "MyName" -Priority 0 -Rules $ProtectionRule -Tenant $Id # ProtectionRule |  (optional)

# Update a protection rule by ID
try {
    $Result = Update-ProtectionRule -Id $Id -ProtectionRule $ProtectionRule
} catch {
    Write-Host ("Exception occurred when calling Update-ProtectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection rule. | 
 **ProtectionRule** | [**ProtectionRule**](ProtectionRule.md)|  | [optional] 

### Return type

[**ProtectionRule**](ProtectionRule.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ResourceGroupNameAndDesciption"></a>
# **Update-ResourceGroupNameAndDesciption**
> ResourceGroup Update-ResourceGroupNameAndDesciption<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceGroup] <PSCustomObject><br>

Update name or description for resource group

Changes name or description for resource group. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The resource group ID.
$ResourceGroup = Initialize-ResourceGroup -CreatedAt (Get-Date) -CreatedBy "MyCreatedBy" -Description "MyDescription" -Id "MyId" -Name "MyName" -NumberOfResources 0 -UpdatedAt (Get-Date) # ResourceGroup | 

# Update name or description for resource group
try {
    $Result = Update-ResourceGroupNameAndDesciption -Id $Id -ResourceGroup $ResourceGroup
} catch {
    Write-Host ("Exception occurred when calling Update-ResourceGroupNameAndDesciption: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The resource group ID. | 
 **ResourceGroup** | [**ResourceGroup**](ResourceGroup.md)|  | 

### Return type

[**ResourceGroup**](ResourceGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-VmBackupSettings"></a>
# **Update-VmBackupSettings**
> CommonSetting Update-VmBackupSettings<br>

Update VM backup settings

Updates the current VM backup settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Update VM backup settings
try {
    $Result = Update-VmBackupSettings
} catch {
    Write-Host ("Exception occurred when calling Update-VmBackupSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

