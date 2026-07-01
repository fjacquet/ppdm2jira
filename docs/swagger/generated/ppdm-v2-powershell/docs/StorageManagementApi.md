# PpdmApiReference.PpdmApiReference\Api.StorageManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-DataDomainCertificate**](StorageManagementApi.md#Add-DataDomainCertificate) | **POST** /api/v2/datadomain-exchanged-certificates | Add PowerProtect Data Domain system trusted CA certificates
[**Invoke-BatchPostInventorySources**](StorageManagementApi.md#Invoke-BatchPostInventorySources) | **POST** /api/v2/inventory-sources-batch | Create inventory sources in batch
[**New-DataDomainMTree**](StorageManagementApi.md#New-DataDomainMTree) | **POST** /api/v2/datadomain-mtrees | Create a PowerProtect Data Domain system Mtree
[**New-DataDomainMovePolicy**](StorageManagementApi.md#New-DataDomainMovePolicy) | **POST** /api/v2/datadomain-data-movement-policies | Create a PowerProtect Data Domain system data movement policy
[**New-DataDomainPolicyConfig**](StorageManagementApi.md#New-DataDomainPolicyConfig) | **POST** /api/v2/datadomain-protection-policy-configs | Configure a PowerProtect Data Domain protection policy
[**New-DataDomainStorageUnit**](StorageManagementApi.md#New-DataDomainStorageUnit) | **POST** /api/v2/datadomain-storage-units | Create a PowerProtect Data Domain storage unit
[**New-DataDomainUser**](StorageManagementApi.md#New-DataDomainUser) | **POST** /api/v2/datadomain-users | Create a PowerProtect Data Domain system user
[**New-NfsExports**](StorageManagementApi.md#New-NfsExports) | **POST** /api/v2/storage-systems/{id}/nfs-exports | Create an NFS export on a storage system
[**New-ReplCopies**](StorageManagementApi.md#New-ReplCopies) | **POST** /api/v2/managed-file-replication-copies | Start MFR copy replication process
[**New-RetentionLockChangeRequest**](StorageManagementApi.md#New-RetentionLockChangeRequest) | **POST** /api/v2/datadomain-retention-lock-change | Configure and enable retention lock on an internal PowerProtect Data Domain storage system.
[**New-SyncContext**](StorageManagementApi.md#New-SyncContext) | **POST** /api/v2/sync-context | Send content of the context
[**Invoke-DeleteDataDomainExchangedCertificate**](StorageManagementApi.md#Invoke-DeleteDataDomainExchangedCertificate) | **DELETE** /api/v2/datadomain-exchanged-certificates | Delete the exchanged trusted CA certificates between local and remote PowerProtect systems
[**Invoke-DeleteDataDomainPolicyConfig**](StorageManagementApi.md#Invoke-DeleteDataDomainPolicyConfig) | **DELETE** /api/v2/datadomain-protection-policy-configs | Unconfigure PowerProtect Data Domain system for a protection policy
[**Invoke-DeleteDataDomainStorageUnit**](StorageManagementApi.md#Invoke-DeleteDataDomainStorageUnit) | **DELETE** /api/v2/datadomain-storage-units/{dataTargetId} | Delete storage unit by data target ID
[**Invoke-DeleteDataDomainUser**](StorageManagementApi.md#Invoke-DeleteDataDomainUser) | **DELETE** /api/v2/datadomain-users/{storageSystemId} | Delete a PowerProtect Data Domain system user
[**Invoke-DeleteNfsExport**](StorageManagementApi.md#Invoke-DeleteNfsExport) | **POST** /api/v2/storage-systems/{id}/nfs-exports-deletion | Delete an NFS export for a storage system
[**Invoke-DeleteReplCopies**](StorageManagementApi.md#Invoke-DeleteReplCopies) | **DELETE** /api/v2/managed-file-replication-copies | Delete MFR copies
[**Invoke-DeleteReplCopy**](StorageManagementApi.md#Invoke-DeleteReplCopy) | **DELETE** /api/v2/managed-file-replication-copies/{id} | Delete an existing MFR copy by ID
[**Invoke-DeleteSyncConfiguration**](StorageManagementApi.md#Invoke-DeleteSyncConfiguration) | **DELETE** /api/v2/sync-destination-configuration/{id} | Delete quick recovery configuration by inventory source ID
[**Get-DataDomainCertificates**](StorageManagementApi.md#Get-DataDomainCertificates) | **GET** /api/v2/datadomain-certificates | Get PowerProtect Data Domain CA certificate
[**Get-DataDomainCloundUnits**](StorageManagementApi.md#Get-DataDomainCloundUnits) | **GET** /api/v2/datadomain-cloud-units/{storageSystemId} | Get all cloud units by storage system ID
[**Get-DataDomainDataMovementSchedule**](StorageManagementApi.md#Get-DataDomainDataMovementSchedule) | **GET** /api/v2/datadomain-data-movement-schedule/{storageSystemId} | Get PowerProtect Data Domain system data movement schedule
[**Get-DataDomainExchangedCertificates**](StorageManagementApi.md#Get-DataDomainExchangedCertificates) | **GET** /api/v2/datadomain-exchanged-certificates | Get PowerProtect Data Domain system CA certificates
[**Get-DataDomainMTree**](StorageManagementApi.md#Get-DataDomainMTree) | **GET** /api/v2/datadomain-mtrees/{dataTargetId} | Get a PowerProtect Data Domain system MTree by ID
[**Get-DataDomainMTrees**](StorageManagementApi.md#Get-DataDomainMTrees) | **GET** /api/v2/datadomain-mtrees | Get all PowerProtect Data Domain system MTrees
[**Get-DataDomainNetworkAddress**](StorageManagementApi.md#Get-DataDomainNetworkAddress) | **GET** /api/v2/datadomain-network-address | Get PowerProtect Data Domain system network address
[**Get-DataDomainStorageUnit**](StorageManagementApi.md#Get-DataDomainStorageUnit) | **GET** /api/v2/datadomain-storage-units/{dataTargetId} | Get storage unit by data target ID
[**Get-DataMovementPolicy**](StorageManagementApi.md#Get-DataMovementPolicy) | **GET** /api/v2/datadomain-data-movement-policies/{dataTargetId} | Get a PowerProtect Data Domain system data movement policy
[**Get-DataTarget**](StorageManagementApi.md#Get-DataTarget) | **GET** /api/v2/data-targets/{id} | Get a data target by ID
[**Get-DataTargets**](StorageManagementApi.md#Get-DataTargets) | **GET** /api/v2/data-targets | Get all data targets
[**Get-InventorySourceStorageSystems**](StorageManagementApi.md#Get-InventorySourceStorageSystems) | **GET** /api/v2/inventory-sources/{id}/storage-systems | Get all storage systems associated to the inventory source
[**Get-LiveMtreeCapacity**](StorageManagementApi.md#Get-LiveMtreeCapacity) | **GET** /api/v2/datadomain-mtrees/{dataTargetId}/capacity | Get a PowerProtect Data Domain system MTree by ID
[**Get-NfsExport**](StorageManagementApi.md#Get-NfsExport) | **GET** /api/v2/storage-systems/{id}/nfs-exports | Get nfs exports for a storage system
[**Get-ProtectionStorageMetrics**](StorageManagementApi.md#Get-ProtectionStorageMetrics) | **GET** /api/v2/protection-storage-metrics | Get all protection storage metrics
[**Get-StorageSystem**](StorageManagementApi.md#Get-StorageSystem) | **GET** /api/v2/storage-systems/{id} | Get a storage system by ID
[**Get-StorageSystemCapacities**](StorageManagementApi.md#Get-StorageSystemCapacities) | **GET** /api/v2/storage-systems/{id}/capacities | Get live capacities for a storage system
[**Get-StorageSystemMetrics**](StorageManagementApi.md#Get-StorageSystemMetrics) | **GET** /api/v2/storage-system-metrics | Get metrics for storage systems
[**Get-StorageSystems**](StorageManagementApi.md#Get-StorageSystems) | **GET** /api/v2/storage-systems | Get all storage systems
[**Get-SyncContext**](StorageManagementApi.md#Get-SyncContext) | **GET** /api/v2/sync-context/{id} | Get content of the context
[**Get-SyncContexts**](StorageManagementApi.md#Get-SyncContexts) | **GET** /api/v2/sync-context | Get the sync context
[**Get-SyncInstance**](StorageManagementApi.md#Get-SyncInstance) | **GET** /api/v2/sync-instance/{id} | Get sync instance configuration by id
[**Get-SyncInstances**](StorageManagementApi.md#Get-SyncInstances) | **GET** /api/v2/sync-instance | Get the sync instance
[**Get-SyncMetrics**](StorageManagementApi.md#Get-SyncMetrics) | **GET** /api/v2/sync-metrics | Get the sync metrics
[**Invoke-MarkHostAsDeleted**](StorageManagementApi.md#Invoke-MarkHostAsDeleted) | **POST** /api/v2/hosts/{id}/change-status | Mark a host by ID as &#39;DELETED&#39;
[**Invoke-PatchConfiguration**](StorageManagementApi.md#Invoke-PatchConfiguration) | **PATCH** /api/v2/sync-destination-configuration | Enable or disable the server sync destination
[**Send-Context**](StorageManagementApi.md#Send-Context) | **PUT** /api/v2/sync-context | Update the sync context
[**Invoke-ReplaceStorageUnit**](StorageManagementApi.md#Invoke-ReplaceStorageUnit) | **POST** /api/v2/datadomain-storage-unit-replacement | Replace a storage unit from one PowerProtect Data Domain storage system to another
[**Invoke-ReplcateDataDomain**](StorageManagementApi.md#Invoke-ReplcateDataDomain) | **POST** /api/v2/datadomain-replacement | Replace a PowerProtect Data Domain storage system
[**Invoke-ResourceAssignmentsBatch**](StorageManagementApi.md#Invoke-ResourceAssignmentsBatch) | **POST** /api/v2/resource-groups/{id}/resource-assignments-batch | Assign resources into resource groups
[**Invoke-ResourceUnassignmentsBatch**](StorageManagementApi.md#Invoke-ResourceUnassignmentsBatch) | **POST** /api/v2/resource-groups/{id}/resource-unassignments-batch | Unassign resources from resource groups
[**Sync-Version**](StorageManagementApi.md#Sync-Version) | **POST** /api/v2/sync-version | Check for complying source and destination system versions and protocols before the sync process
[**Invoke-TriggerSyncInstance**](StorageManagementApi.md#Invoke-TriggerSyncInstance) | **POST** /api/v2/sync-instance | Trigger metadata synchronization
[**Update-DataDomainDdboostEncryptionSettings**](StorageManagementApi.md#Update-DataDomainDdboostEncryptionSettings) | **PUT** /api/v2/datadomain-ddboost-encryption-settings | Update PowerProtect Data Domain system encryption setting
[**Update-DataDomainMTree**](StorageManagementApi.md#Update-DataDomainMTree) | **PUT** /api/v2/datadomain-mtrees/{dataTargetId} | Update a PowerProtect Data Domain system Mtree by ID
[**Update-DataDomainPolicyConfig**](StorageManagementApi.md#Update-DataDomainPolicyConfig) | **PUT** /api/v2/datadomain-protection-policy-configs | Update PowerProtect Data Domain system for a protection policy
[**Update-DataDomainStorageUnit**](StorageManagementApi.md#Update-DataDomainStorageUnit) | **PUT** /api/v2/datadomain-storage-units/{dataTargetId} | Update a storage unit by data target ID
[**Update-ReplCopy**](StorageManagementApi.md#Update-ReplCopy) | **PUT** /api/v2/managed-file-replication-copies/{id} | Patch MFR copy by ID
[**Update-StorageSystem**](StorageManagementApi.md#Update-StorageSystem) | **PUT** /api/v2/storage-systems/{id} | Update a storage system by ID
[**Update-SyncContext**](StorageManagementApi.md#Update-SyncContext) | **PATCH** /api/v2/sync-context | Update content of the context
[**Confirm-DataDomain**](StorageManagementApi.md#Confirm-DataDomain) | **POST** /api/v2/datadomain-system-validation | Validate PowerProtect Data Domain system version


<a id="Add-DataDomainCertificate"></a>
# **Add-DataDomainCertificate**
> String Add-DataDomainCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainExchangeCerts] <PSCustomObject><br>

Add PowerProtect Data Domain system trusted CA certificates

Adds the remote PowerProtect CA certificate to the local PowerProtect as trusted-CA certificates. This step is needed when encryption setting is enabled, to exchange certificates between the local and remote PowerProtect systems. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataDomainExchangeCerts = Initialize-DataDomainExchangeCerts -CredentialId "MyCredentialId" -Hostname "MyHostname" -Port 0 -Type "MyType" # DataDomainExchangeCerts |  (optional)

# Add PowerProtect Data Domain system trusted CA certificates
try {
    $Result = Add-DataDomainCertificate -DataDomainExchangeCerts $DataDomainExchangeCerts
} catch {
    Write-Host ("Exception occurred when calling Add-DataDomainCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainExchangeCerts** | [**DataDomainExchangeCerts**](DataDomainExchangeCerts.md)|  | [optional] 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-BatchPostInventorySources"></a>
# **Invoke-BatchPostInventorySources**
> BatchCreateResponses Invoke-BatchPostInventorySources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InventorySourcesBatchPostRequest] <PSCustomObject><br>

Create inventory sources in batch

Create inventory sources in batch. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$InventorySourcesBatchPostRequestBodyCredentials = Initialize-InventorySourcesBatchPostRequestBodyCredentials -Id "MyId"

$InventorySourcesBatchPostRequestBodyDetailsNas = Initialize-InventorySourcesBatchPostRequestBodyDetailsNas -Protocol "NFS"
$InventorySourcesBatchPostRequestBodyDetails = Initialize-InventorySourcesBatchPostRequestBodyDetails -Nas $InventorySourcesBatchPostRequestBodyDetailsNas

$InventorySourcesBatchPostRequestBody = Initialize-InventorySourcesBatchPostRequestBody -Address "MyAddress" -Credentials $InventorySourcesBatchPostRequestBodyCredentials -Details $InventorySourcesBatchPostRequestBodyDetails -Name "MyName" -Port 0 -Type "GENERICNASMANAGEMENTSERVER"

$InventorySourcesBatchPostRequestRequests = Initialize-InventorySourcesBatchPostRequestRequests -Body $InventorySourcesBatchPostRequestBody -Id "MyId"

$InventorySourcesBatchPostRequest = Initialize-InventorySourcesBatchPostRequest -Requests $InventorySourcesBatchPostRequestRequests # InventorySourcesBatchPostRequest |  (optional)

# Create inventory sources in batch
try {
    $Result = Invoke-BatchPostInventorySources -InventorySourcesBatchPostRequest $InventorySourcesBatchPostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchPostInventorySources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InventorySourcesBatchPostRequest** | [**InventorySourcesBatchPostRequest**](InventorySourcesBatchPostRequest.md)|  | [optional] 

### Return type

[**BatchCreateResponses**](BatchCreateResponses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DataDomainMTree"></a>
# **New-DataDomainMTree**
> DataDomainMTree New-DataDomainMTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainMTreeRequest] <PSCustomObject><br>

Create a PowerProtect Data Domain system Mtree

Create a PowerProtect Data Domain system Mtree. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = Initialize-Id -Id "MyId"
$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
"DISCOVERY"$DataDomainMTreeRequest = Initialize-DataDomainMTreeRequest -AppOptimizedCompression "MyAppOptimizedCompression" -Attributes @{ key_example = "MyInner" } -AvailableCapacityInBytes 0 -CreatedAt (Get-Date) -Credential $Id -Deletable $false -Discovered $false -HardCapacityQuotaLevel 0 -HardStreamQuotaLevel 0 -Id "MyId" -LastDiscoveryStatus "MyLastDiscoveryStatus" -LastUpdated (Get-Date) -Name "MyName" -NetworkInterfaces $NetworkInterfaceStorageUnit -ProtectionCreated $false -Purpose "GENERAL" -ReplicationSources "MyReplicationSources" -ReplicationTargets "MyReplicationTargets" -RetentionEnabledIndefinitely $false -RetentionLockMode "MyRetentionLockMode" -RetentionLockStatus "MyRetentionLockStatus" -RetentionMaximum 0 -RetentionMinimum 0 -Reusable $false -SecurityOfficerPassword "MySecurityOfficerPassword" -SecurityOfficerUsername "MySecurityOfficerUsername" -SoftCapacityQuotaLevel 0 -SoftStreamQuotaLevel 0 -StorageSystem $Id -SystemManaged $false -Tenant $Id -TotalCapacityInBytes 0 -Type "MyType" -UnsupportedFeatures 
$Id = Initialize-Id -Id "MyId"
$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
"DISCOVERY" -UpdatedAt (Get-Date) -Usage "DATA_MANAGER_VAULT" -UserTags "MyUserTags" -VaultDataTargetIds "MyVaultDataTargetIds" # DataDomainMTreeRequest |  (optional)

# Create a PowerProtect Data Domain system Mtree
try {
    $Result = New-DataDomainMTree -DataDomainMTreeRequest $DataDomainMTreeRequest
} catch {
    Write-Host ("Exception occurred when calling New-DataDomainMTree: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainMTreeRequest** | [**DataDomainMTreeRequest**](DataDomainMTreeRequest.md)|  | [optional] 

### Return type

[**DataDomainMTree**](DataDomainMTree.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DataDomainMovePolicy"></a>
# **New-DataDomainMovePolicy**
> DataMovementPolicy New-DataDomainMovePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataMovementPolicy] <PSCustomObject><br>

Create a PowerProtect Data Domain system data movement policy

Creates a data movemement policy for the specified storage unit and cloud unit. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataMovementPolicy = Initialize-DataMovementPolicy -CloudUnitName "MyCloudUnitName" -DataDomainId "MyDataDomainId" -DataTargetId "MyDataTargetId" -MtreePath "MyMtreePath" -StorageArrayId "MyStorageArrayId" -StorageUnitName "MyStorageUnitName" # DataMovementPolicy | 

# Create a PowerProtect Data Domain system data movement policy
try {
    $Result = New-DataDomainMovePolicy -DataMovementPolicy $DataMovementPolicy
} catch {
    Write-Host ("Exception occurred when calling New-DataDomainMovePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataMovementPolicy** | [**DataMovementPolicy**](DataMovementPolicy.md)|  | 

### Return type

[**DataMovementPolicy**](DataMovementPolicy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DataDomainPolicyConfig"></a>
# **New-DataDomainPolicyConfig**
> TaskResponse New-DataDomainPolicyConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainProtectionPolicy] <PSCustomObject><br>

Configure a PowerProtect Data Domain protection policy

Configures the protection policy on the PowerProtect Data Domain system. Creates an MTree, creates a user, sets the retention policy, and possibly creates a data movement policy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataMovementPolicy = Initialize-DataMovementPolicy -CloudUnitName "MyCloudUnitName" -DataDomainId "MyDataDomainId" -DataTargetId "MyDataTargetId" -MtreePath "MyMtreePath" -StorageArrayId "MyStorageArrayId" -StorageUnitName "MyStorageUnitName"
$DataDomainProtectionPolicyDataDomainMTree = Initialize-DataDomainProtectionPolicyDataDomainMTree -AppOptimizedCompression "MyAppOptimizedCompression" -HardCapacityQuotaLevel 0 -HardStreamQuotaLevel 0 -Name "MyName" -SoftCapacityQuotaLevel 0 -SoftStreamQuotaLevel 0 -Type "storageunit"
$RetentionLock = Initialize-RetentionLock -Enable $false -Mode "COMPLIANCE"
$DataDomainStorageUnitAttributes = Initialize-DataDomainStorageUnitAttributes -TargetCloudUnitName "MyTargetCloudUnitName" -TopLevelPath "MyTopLevelPath"
$DataDomainUserWithPassword = Initialize-DataDomainUserWithPassword -Name "MyName" -OldPassword "MyOldPassword" -Password "MyPassword" -Role "MyRole"
$DataDomainProtectionPolicy = Initialize-DataDomainProtectionPolicy -CredentialId "MyCredentialId" -DataMovementPolicy $DataMovementPolicy -DataTargetId "MyDataTargetId" -Mtree $DataDomainProtectionPolicyDataDomainMTree -ProtectionLifeCycleId "MyProtectionLifeCycleId" -ProtectionStageId "MyProtectionStageId" -RetentionLock $RetentionLock -StorageArrayId "MyStorageArrayId" -StorageUnitAttributes $DataDomainStorageUnitAttributes -User $DataDomainUserWithPassword -WorkflowTaskId "MyWorkflowTaskId" # DataDomainProtectionPolicy | 

# Configure a PowerProtect Data Domain protection policy
try {
    $Result = New-DataDomainPolicyConfig -DataDomainProtectionPolicy $DataDomainProtectionPolicy
} catch {
    Write-Host ("Exception occurred when calling New-DataDomainPolicyConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainProtectionPolicy** | [**DataDomainProtectionPolicy**](DataDomainProtectionPolicy.md)|  | 

### Return type

[**TaskResponse**](TaskResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DataDomainStorageUnit"></a>
# **New-DataDomainStorageUnit**
> DataDomainStorageUnit New-DataDomainStorageUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainStorageUnitCreateRequest] <PSCustomObject><br>

Create a PowerProtect Data Domain storage unit

Creates a PowerProtect Data Domain storage unit. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
$RetentionLock = Initialize-RetentionLock -Enable $false -Mode "COMPLIANCE"
$StorageUnitCreate = Initialize-StorageUnitCreate -CombinedStreamHardLimit 0 -CombinedStreamSoftLimit 0 -HardLimit 0 -Name "MyName" -NativeId "MyNativeId" -NativeUri "MyNativeUri" -SoftLimit 0 -TenantUnit "MyTenantUnit"
$DataDomainStorageUnitCreateRequest = Initialize-DataDomainStorageUnitCreateRequest -CredentialId "MyCredentialId" -DataAccessIp "MyDataAccessIp" -DataTargetId "MyDataTargetId" -NetworkInterfaces $NetworkInterfaceStorageUnit -RetentionLock $RetentionLock -StorageArrayId "MyStorageArrayId" -StorageUnit $StorageUnitCreate # DataDomainStorageUnitCreateRequest | 

# Create a PowerProtect Data Domain storage unit
try {
    $Result = New-DataDomainStorageUnit -DataDomainStorageUnitCreateRequest $DataDomainStorageUnitCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-DataDomainStorageUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainStorageUnitCreateRequest** | [**DataDomainStorageUnitCreateRequest**](DataDomainStorageUnitCreateRequest.md)|  | 

### Return type

[**DataDomainStorageUnit**](DataDomainStorageUnit.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-DataDomainUser"></a>
# **New-DataDomainUser**
> DdUser New-DataDomainUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainUser] <PSCustomObject><br>

Create a PowerProtect Data Domain system user

Creates the user on the PowerProtect Data Domain system specified by the storage system ID. Note that this method does not create a corresponding PowerProtect Data Manager user. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataDomainUser = Initialize-DataDomainUser -CredentialId "MyCredentialId" -StorageArrayId "MyStorageArrayId" -UserRole "MyUserRole" # DataDomainUser | 

# Create a PowerProtect Data Domain system user
try {
    $Result = New-DataDomainUser -DataDomainUser $DataDomainUser
} catch {
    Write-Host ("Exception occurred when calling New-DataDomainUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainUser** | [**DataDomainUser**](DataDomainUser.md)|  | 

### Return type

[**DdUser**](DdUser.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NfsExports"></a>
# **New-NfsExports**
> NfsExport New-NfsExports<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostNfsExportRequest] <PSCustomObject><br>

Create an NFS export on a storage system

Creates an NFS export configuration for a specified storage system based on the provided NFS export path and clients. If the NFS export configuration already exists for the specified clients, this operation appends new clients. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | ID of the storage system.
$PostNfsExportRequest = Initialize-PostNfsExportRequest -Clients "MyClients" -Path "MyPath" # PostNfsExportRequest |  (optional)

# Create an NFS export on a storage system
try {
    $Result = New-NfsExports -Id $Id -PostNfsExportRequest $PostNfsExportRequest
} catch {
    Write-Host ("Exception occurred when calling New-NfsExports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the storage system. | 
 **PostNfsExportRequest** | [**PostNfsExportRequest**](PostNfsExportRequest.md)|  | [optional] 

### Return type

[**NfsExport**](NfsExport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ReplCopies"></a>
# **New-ReplCopies**
> TaskResponse New-ReplCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedFileReplCopy] <PSCustomObject><br>

Start MFR copy replication process

Starts the process for managed file replication. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$MfrCopyDirective = Initialize-MfrCopyDirective -Type "MARK_SKIPPED_COPIES" -Value "MyValue"
$MfrCopySelector = Initialize-MfrCopySelector -Type "COPY" -Value "MyValue"
$ExtendedRetentionObject = Initialize-ExtendedRetentionObject -BackupLevel "MyBackupLevel" -BackupType "MyBackupType" -Interval 0 -Unit "YEAR"
$RetentionObject = Initialize-RetentionObject -Interval 0 -Unit "YEAR"
$ManagedFileReplCopyReplicationOptions = Initialize-ManagedFileReplCopyReplicationOptions -CopyDirectives $MfrCopyDirective -CopySelectors $MfrCopySelector -DisableProtectionPolicyProcessing $false -ExtendedRetentions $ExtendedRetentionObject -IsAdhocReplication $false -Retention $RetentionObject -RetentionInterval 0 -RetentionUnit "MyRetentionUnit" -Type "ADHOC"

$ManagedFileReplCopy = Initialize-ManagedFileReplCopy -AssetId "MyAssetId" -MfrStageId "MyMfrStageId" -ProtectionLifeCycleId "MyProtectionLifeCycleId" -ProtectionPolicyId "MyProtectionPolicyId" -ReplicationOptions $ManagedFileReplCopyReplicationOptions -SystemUse $false -WorkflowTaskId "MyWorkflowTaskId" # ManagedFileReplCopy | 

# Start MFR copy replication process
try {
    $Result = New-ReplCopies -ManagedFileReplCopy $ManagedFileReplCopy
} catch {
    Write-Host ("Exception occurred when calling New-ReplCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ManagedFileReplCopy** | [**ManagedFileReplCopy**](ManagedFileReplCopy.md)|  | 

### Return type

[**TaskResponse**](TaskResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-RetentionLockChangeRequest"></a>
# **New-RetentionLockChangeRequest**
> ActivityResponseResource New-RetentionLockChangeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainRetentionLockChangeRequest] <PSCustomObject><br>

Configure and enable retention lock on an internal PowerProtect Data Domain storage system.

To configure and enable retention lock. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$DataDomainRetentionLockChangeRequest = Initialize-DataDomainRetentionLockChangeRequest -Enabled $false -RetentionLockType "COMPLIANCE" # DataDomainRetentionLockChangeRequest |  (optional)

# Configure and enable retention lock on an internal PowerProtect Data Domain storage system.
try {
    $Result = New-RetentionLockChangeRequest -DataDomainRetentionLockChangeRequest $DataDomainRetentionLockChangeRequest
} catch {
    Write-Host ("Exception occurred when calling New-RetentionLockChangeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainRetentionLockChangeRequest** | [**DataDomainRetentionLockChangeRequest**](DataDomainRetentionLockChangeRequest.md)|  | [optional] 

### Return type

[**ActivityResponseResource**](ActivityResponseResource.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-SyncContext"></a>
# **New-SyncContext**
> SyncContext New-SyncContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncContext] <PSCustomObject><br>

Send content of the context

Used only for the initial synchronization of the context sent from local to other systems. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = Initialize-Id -Id "MyId"
$SyncContextError = Initialize-SyncContextError -Code "MISSING_ID" -Reason "MyReason"
$SyncTrigger = Initialize-SyncTrigger -CascadeToInput $false -Type "SCHEDULE" -Value "MyValue"
$SyncContext = Initialize-SyncContext -ActivityId "MyActivityId" -Assignee $Id -EndTime (Get-Date) -VarError $SyncContextError -Id "MyId" -Inputs @{ key_example =  } -Outputs @{ key_example =  } -Protocol "NOP" -ResilienceTry 0 -StartTime (Get-Date) -State "PENDING" -SubContexts $SyncContext -SyncInstanceId "MySyncInstanceId" -Trigger $SyncTrigger -TriggerTime (Get-Date) # SyncContext |  (optional)

# Send content of the context
try {
    $Result = New-SyncContext -SyncContext $SyncContext
} catch {
    Write-Host ("Exception occurred when calling New-SyncContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SyncContext** | [**SyncContext**](SyncContext.md)|  | [optional] 

### Return type

[**SyncContext**](SyncContext.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDataDomainExchangedCertificate"></a>
# **Invoke-DeleteDataDomainExchangedCertificate**
> String Invoke-DeleteDataDomainExchangedCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainExchangeCerts] <PSCustomObject><br>

Delete the exchanged trusted CA certificates between local and remote PowerProtect systems

Deletes the exchanged trusted CA certificates between local and remote PowerProtect Data Managers. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataDomainExchangeCerts = Initialize-DataDomainExchangeCerts -CredentialId "MyCredentialId" -Hostname "MyHostname" -Port 0 -Type "MyType" # DataDomainExchangeCerts |  (optional)

# Delete the exchanged trusted CA certificates between local and remote PowerProtect systems
try {
    $Result = Invoke-DeleteDataDomainExchangedCertificate -DataDomainExchangeCerts $DataDomainExchangeCerts
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDataDomainExchangedCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainExchangeCerts** | [**DataDomainExchangeCerts**](DataDomainExchangeCerts.md)|  | [optional] 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDataDomainPolicyConfig"></a>
# **Invoke-DeleteDataDomainPolicyConfig**
> String Invoke-DeleteDataDomainPolicyConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainProtectionPolicyDeleteRequest] <PSCustomObject><br>

Unconfigure PowerProtect Data Domain system for a protection policy

Unconfigures PowerProtect Data Domain system for a protection policy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataMovementPolicy = Initialize-DataMovementPolicy -CloudUnitName "MyCloudUnitName" -DataDomainId "MyDataDomainId" -DataTargetId "MyDataTargetId" -MtreePath "MyMtreePath" -StorageArrayId "MyStorageArrayId" -StorageUnitName "MyStorageUnitName"
$DataDomainProtectionPolicyDataDomainMTree = Initialize-DataDomainProtectionPolicyDataDomainMTree -AppOptimizedCompression "MyAppOptimizedCompression" -HardCapacityQuotaLevel 0 -HardStreamQuotaLevel 0 -Name "MyName" -SoftCapacityQuotaLevel 0 -SoftStreamQuotaLevel 0 -Type "storageunit"
$RetentionLock = Initialize-RetentionLock -Enable $false -Mode "COMPLIANCE"
$DataDomainStorageUnitAttributes = Initialize-DataDomainStorageUnitAttributes -TargetCloudUnitName "MyTargetCloudUnitName" -TopLevelPath "MyTopLevelPath"
$DataDomainUserWithPassword = Initialize-DataDomainUserWithPassword -Name "MyName" -OldPassword "MyOldPassword" -Password "MyPassword" -Role "MyRole"
$DataDomainProtectionPolicyDeleteRequest = Initialize-DataDomainProtectionPolicyDeleteRequest -CredentialId "MyCredentialId" -DataMovementPolicy $DataMovementPolicy -DataTargetId "MyDataTargetId" -Mtree $DataDomainProtectionPolicyDataDomainMTree -ProtectionLifeCycleId "MyProtectionLifeCycleId" -ProtectionStageId "MyProtectionStageId" -RetentionLock $RetentionLock -StorageArrayId "MyStorageArrayId" -StorageUnitAttributes $DataDomainStorageUnitAttributes -User $DataDomainUserWithPassword -WorkflowTaskId "MyWorkflowTaskId" # DataDomainProtectionPolicyDeleteRequest |  (optional)

# Unconfigure PowerProtect Data Domain system for a protection policy
try {
    $Result = Invoke-DeleteDataDomainPolicyConfig -DataDomainProtectionPolicyDeleteRequest $DataDomainProtectionPolicyDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDataDomainPolicyConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainProtectionPolicyDeleteRequest** | [**DataDomainProtectionPolicyDeleteRequest**](DataDomainProtectionPolicyDeleteRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDataDomainStorageUnit"></a>
# **Invoke-DeleteDataDomainStorageUnit**
> void Invoke-DeleteDataDomainStorageUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SecurityOfficerCredentials] <PSCustomObject><br>

Delete storage unit by data target ID

Deletes the storage unit on the PowerProtect Data Domain system. This API removes the associated data target resource. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID.
$SecurityOfficerCredentials = Initialize-SecurityOfficerCredentials -SecurityOfficerPassword "MySecurityOfficerPassword" -SecurityOfficerUsername "MySecurityOfficerUsername" # SecurityOfficerCredentials |  (optional)

# Delete storage unit by data target ID
try {
    $Result = Invoke-DeleteDataDomainStorageUnit -DataTargetId $DataTargetId -SecurityOfficerCredentials $SecurityOfficerCredentials
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDataDomainStorageUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID. | 
 **SecurityOfficerCredentials** | [**SecurityOfficerCredentials**](SecurityOfficerCredentials.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDataDomainUser"></a>
# **Invoke-DeleteDataDomainUser**
> void Invoke-DeleteDataDomainUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageSystemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <PSCustomObject><br>

Delete a PowerProtect Data Domain system user

Deletes a PowerProtect Data Domain system user. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$StorageSystemId = "MyStorageSystemId" # String | Storage system ID.
$CredentialId = Initialize-CredentialId -CredentialId "MyCredentialId" # CredentialId | 

# Delete a PowerProtect Data Domain system user
try {
    $Result = Invoke-DeleteDataDomainUser -StorageSystemId $StorageSystemId -CredentialId $CredentialId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDataDomainUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageSystemId** | **String**| Storage system ID. | 
 **CredentialId** | [**CredentialId**](CredentialId.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNfsExport"></a>
# **Invoke-DeleteNfsExport**
> void Invoke-DeleteNfsExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostNfsExportDeletionRequest] <PSCustomObject><br>

Delete an NFS export for a storage system

Deletes NFS export configuration for the specified storage system based on the provided NFS export path. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the storage system.
$PostNfsExportDeletionRequest = Initialize-PostNfsExportDeletionRequest -Path "MyPath" # PostNfsExportDeletionRequest |  (optional)

# Delete an NFS export for a storage system
try {
    $Result = Invoke-DeleteNfsExport -Id $Id -PostNfsExportDeletionRequest $PostNfsExportDeletionRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNfsExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the storage system. | 
 **PostNfsExportDeletionRequest** | [**PostNfsExportDeletionRequest**](PostNfsExportDeletionRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteReplCopies"></a>
# **Invoke-DeleteReplCopies**
> TaskResponse Invoke-DeleteReplCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteMFRCopiesRequest] <PSCustomObject><br>

Delete MFR copies

Deletes managed file replication (MFR) copies. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeleteMFRCopiesRequest = Initialize-DeleteMFRCopiesRequest -CopyResourceIds "MyCopyResourceIds" -WorkflowTaskId "MyWorkflowTaskId" # DeleteMFRCopiesRequest | 

# Delete MFR copies
try {
    $Result = Invoke-DeleteReplCopies -DeleteMFRCopiesRequest $DeleteMFRCopiesRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteReplCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeleteMFRCopiesRequest** | [**DeleteMFRCopiesRequest**](DeleteMFRCopiesRequest.md)|  | 

### Return type

[**TaskResponse**](TaskResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteReplCopy"></a>
# **Invoke-DeleteReplCopy**
> void Invoke-DeleteReplCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an existing MFR copy by ID

Deletes a managed file replication (MFR) copy by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection copy set.

# Delete an existing MFR copy by ID
try {
    $Result = Invoke-DeleteReplCopy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteReplCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection copy set. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSyncConfiguration"></a>
# **Invoke-DeleteSyncConfiguration**
> void Invoke-DeleteSyncConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String><br>

Delete quick recovery configuration by inventory source ID

Delete quick recovery configuration and metadata from the source PowerProtect Data Manager system and associated entries in the remote PowerProtect Data Manager system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Inventory source ID.
$Scope = "CONFIG" # String | The scope of the deletion. The valid values are CONFIG, METADATA, or ALL. The default scope is CONFIG. (optional)

# Delete quick recovery configuration by inventory source ID
try {
    $Result = Invoke-DeleteSyncConfiguration -Id $Id -Scope $Scope
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSyncConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Inventory source ID. | 
 **Scope** | **String**| The scope of the deletion. The valid values are CONFIG, METADATA, or ALL. The default scope is CONFIG. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainCertificates"></a>
# **Get-DataDomainCertificates**
> String Get-DataDomainCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Hostname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Port] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <String><br>

Get PowerProtect Data Domain CA certificate

Retrieves information about the certificate of the PowerProtect Data Domain that exists on the Integrated Storage. The certificate type is CA. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Hostname = "MyHostname" # String | the hostname
$Port = 56 # Int32 | the port number
$CredentialId = "MyCredentialId" # String | the credential ID

# Get PowerProtect Data Domain CA certificate
try {
    $Result = Get-DataDomainCertificates -Hostname $Hostname -Port $Port -CredentialId $CredentialId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Hostname** | **String**| the hostname | 
 **Port** | **Int32**| the port number | 
 **CredentialId** | **String**| the credential ID | 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainCloundUnits"></a>
# **Get-DataDomainCloundUnits**
> CloudUnits Get-DataDomainCloundUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageSystemId] <String><br>

Get all cloud units by storage system ID

Provides a storage system ID to retrieve a list of all cloud units on the specified PowerProtect Data Domain. The result contains information about the cloud profile and provider name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$StorageSystemId = "MyStorageSystemId" # String | Storage system ID.

# Get all cloud units by storage system ID
try {
    $Result = Get-DataDomainCloundUnits -StorageSystemId $StorageSystemId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainCloundUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageSystemId** | **String**| Storage system ID. | 

### Return type

[**CloudUnits**](CloudUnits.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainDataMovementSchedule"></a>
# **Get-DataDomainDataMovementSchedule**
> DataMovementInfo Get-DataDomainDataMovementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageSystemId] <String><br>

Get PowerProtect Data Domain system data movement schedule

Retrieves PowerProtect Data Domain system data movement schedule. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$StorageSystemId = "MyStorageSystemId" # String | Storage system ID.

# Get PowerProtect Data Domain system data movement schedule
try {
    $Result = Get-DataDomainDataMovementSchedule -StorageSystemId $StorageSystemId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainDataMovementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageSystemId** | **String**| Storage system ID. | 

### Return type

[**DataMovementInfo**](DataMovementInfo.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainExchangedCertificates"></a>
# **Get-DataDomainExchangedCertificates**
> String Get-DataDomainExchangedCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Hostname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Port] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <String><br>

Get PowerProtect Data Domain system CA certificates

Retrieves the information about the certificate of the PowerProtect Data Manager that exists on the Integrated Storage. The certificate type is CA. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Hostname = "MyHostname" # String | The hostname.
$Port = 56 # Int32 | The port number.
$CredentialId = "MyCredentialId" # String | The credential ID.

# Get PowerProtect Data Domain system CA certificates
try {
    $Result = Get-DataDomainExchangedCertificates -Hostname $Hostname -Port $Port -CredentialId $CredentialId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainExchangedCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Hostname** | **String**| The hostname. | 
 **Port** | **Int32**| The port number. | 
 **CredentialId** | **String**| The credential ID. | 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainMTree"></a>
# **Get-DataDomainMTree**
> DataDomainMTree Get-DataDomainMTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>

Get a PowerProtect Data Domain system MTree by ID

Retrieves a PowerProtect Data Domain system MTree by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID.

# Get a PowerProtect Data Domain system MTree by ID
try {
    $Result = Get-DataDomainMTree -DataTargetId $DataTargetId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainMTree: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID. | 

### Return type

[**DataDomainMTree**](DataDomainMTree.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainMTrees"></a>
# **Get-DataDomainMTrees**
> DataDomainMTrees Get-DataDomainMTrees<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all PowerProtect Data Domain system MTrees

Retrieves a list of all PowerProtect Data Domain MTrees existing in all added PowerProtect Data Domain systems in the current PowerProtect system. The result contains information about each Mtree on the list such as the name, retention lock, storage system, and quotas. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all PowerProtect Data Domain system MTrees
try {
    $Result = Get-DataDomainMTrees -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainMTrees: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**DataDomainMTrees**](DataDomainMTrees.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainNetworkAddress"></a>
# **Get-DataDomainNetworkAddress**
> DataDomainNetworkAddress Get-DataDomainNetworkAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>

Get PowerProtect Data Domain system network address

Internal API for testing purposes only, to get PowerProtect Data Domain system network address. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AssetId = "MyAssetId" # String | Request assetId. (optional)
$DataTargetId = "MyDataTargetId" # String | Request dataTargetId. (optional)

# Get PowerProtect Data Domain system network address
try {
    $Result = Get-DataDomainNetworkAddress -AssetId $AssetId -DataTargetId $DataTargetId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainNetworkAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetId** | **String**| Request assetId. | [optional] 
 **DataTargetId** | **String**| Request dataTargetId. | [optional] 

### Return type

[**DataDomainNetworkAddress**](DataDomainNetworkAddress.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataDomainStorageUnit"></a>
# **Get-DataDomainStorageUnit**
> DataDomainStorageUnit Get-DataDomainStorageUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>

Get storage unit by data target ID

Provides a data target ID to get information about the storage unit such as name, retention lock status, and PowerProtect Data Domain storage system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID

# Get storage unit by data target ID
try {
    $Result = Get-DataDomainStorageUnit -DataTargetId $DataTargetId
} catch {
    Write-Host ("Exception occurred when calling Get-DataDomainStorageUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID | 

### Return type

[**DataDomainStorageUnit**](DataDomainStorageUnit.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataMovementPolicy"></a>
# **Get-DataMovementPolicy**
> DataMovementPolicy Get-DataMovementPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>

Get a PowerProtect Data Domain system data movement policy

Retrieves a PowerProtect Data Domain system data movement policy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID.

# Get a PowerProtect Data Domain system data movement policy
try {
    $Result = Get-DataMovementPolicy -DataTargetId $DataTargetId
} catch {
    Write-Host ("Exception occurred when calling Get-DataMovementPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID. | 

### Return type

[**DataMovementPolicy**](DataMovementPolicy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataTarget"></a>
# **Get-DataTarget**
> DataTarget Get-DataTarget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a data target by ID

This API or field will be deleted after 19.19 (19.16 + 4) release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | id of the data target

# Get a data target by ID
try {
    $Result = Get-DataTarget -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-DataTarget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| id of the data target | 

### Return type

[**DataTarget**](DataTarget.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataTargets"></a>
# **Get-DataTargets**
> DataTargets Get-DataTargets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all data targets

This API or field will be deleted after 19.19 (19.16 + 4) release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all data targets
try {
    $Result = Get-DataTargets -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-DataTargets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**DataTargets**](DataTargets.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-InventorySourceStorageSystems"></a>
# **Get-InventorySourceStorageSystems**
> StorageSystem Get-InventorySourceStorageSystems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all storage systems associated to the inventory source

Retrieves all storage systems associated to the inventory source. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Restore Administrator, Backup Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The inventory source ID.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all storage systems associated to the inventory source
try {
    $Result = Get-InventorySourceStorageSystems -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-InventorySourceStorageSystems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The inventory source ID. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**StorageSystem**](StorageSystem.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LiveMtreeCapacity"></a>
# **Get-LiveMtreeCapacity**
> DataDomainMTreeCapacity Get-LiveMtreeCapacity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>

Get a PowerProtect Data Domain system MTree by ID

Retrieves capacity information for the specified storage unit. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Indicates PowerProtect Data Domain MTree data target ID.

# Get a PowerProtect Data Domain system MTree by ID
try {
    $Result = Get-LiveMtreeCapacity -DataTargetId $DataTargetId
} catch {
    Write-Host ("Exception occurred when calling Get-LiveMtreeCapacity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Indicates PowerProtect Data Domain MTree data target ID. | 

### Return type

[**DataDomainMTreeCapacity**](DataDomainMTreeCapacity.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NfsExport"></a>
# **Get-NfsExport**
> NfsExports Get-NfsExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get nfs exports for a storage system

Retrieves the list of NFS export configurations for the specified storage system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the storage system.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get nfs exports for a storage system
try {
    $Result = Get-NfsExport -Id $Id -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-NfsExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the storage system. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**NfsExports**](NfsExports.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionStorageMetrics"></a>
# **Get-ProtectionStorageMetrics**
> StorageMetricsStats Get-ProtectionStorageMetrics<br>

Get all protection storage metrics

Retrieves aggregation of all protection storage metrics. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get all protection storage metrics
try {
    $Result = Get-ProtectionStorageMetrics
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionStorageMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageMetricsStats**](StorageMetricsStats.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StorageSystem"></a>
# **Get-StorageSystem**
> StorageSystem Get-StorageSystem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a storage system by ID

Retrieves a storage system by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the storage system.

# Get a storage system by ID
try {
    $Result = Get-StorageSystem -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-StorageSystem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the storage system. | 

### Return type

[**StorageSystem**](StorageSystem.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StorageSystemCapacities"></a>
# **Get-StorageSystemCapacities**
> Capacities Get-StorageSystemCapacities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Period] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

Get live capacities for a storage system

Retrieves capacity information for a specified storage system. Capacity data is fetched directly from the PowerProtect Data Domain system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the storage system.
$Period = "MyPeriod" # String | ISO 8601 duration day designator. Either P7D or P31D. (optional)
$Type = "ACTIVE" # String | Storage tier type. One of ACTIVE, CLOUD, or COMBINED. (optional)

# Get live capacities for a storage system
try {
    $Result = Get-StorageSystemCapacities -Id $Id -Period $Period -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Get-StorageSystemCapacities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the storage system. | 
 **Period** | **String**| ISO 8601 duration day designator. Either P7D or P31D. | [optional] 
 **Type** | **String**| Storage tier type. One of ACTIVE, CLOUD, or COMBINED. | [optional] 

### Return type

[**Capacities**](Capacities.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StorageSystemMetrics"></a>
# **Get-StorageSystemMetrics**
> StorageSystemMetrics Get-StorageSystemMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get metrics for storage systems

Retrieves a capacity status summary for all **Storage Systems** in the PowerProtect Data Manager including PowerProtect Data Domain systems, PowerProtect systems, and other local or external storage systems. This API request belongs to the storage management API. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get metrics for storage systems
try {
    $Result = Get-StorageSystemMetrics -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-StorageSystemMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**StorageSystemMetrics**](StorageSystemMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StorageSystems"></a>
# **Get-StorageSystems**
> StorageSystems Get-StorageSystems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SupportedAssetType] <String><br>

Get all storage systems

Retrieves all **Storage Systems** in the PowerProtect Data Manager including PowerProtect Data Domain systems, PowerProtect systems, and other local or external storage systems. **Storage Systems** are used to store the asset data regarding backing up or replicating assets. This API request belongs to the storage management API. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$SupportedAssetType = "VMWARE_VIRTUAL_MACHINE" # String | The asset type the returned storage systems could support. (optional)

# Get all storage systems
try {
    $Result = Get-StorageSystems -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -SupportedAssetType $SupportedAssetType
} catch {
    Write-Host ("Exception occurred when calling Get-StorageSystems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **SupportedAssetType** | **String**| The asset type the returned storage systems could support. | [optional] 

### Return type

[**StorageSystems**](StorageSystems.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyncContext"></a>
# **Get-SyncContext**
> SyncContext Get-SyncContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get content of the context

Retrieves the content of the context document on a system using the contextId. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | contextId

# Get content of the context
try {
    $Result = Get-SyncContext -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SyncContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| contextId | 

### Return type

[**SyncContext**](SyncContext.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyncContexts"></a>
# **Get-SyncContexts**
> SyncContext Get-SyncContexts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get the sync context

Get the content of the sync context. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieves a list of sync contexts that are defined by the order. (optional)

# Get the sync context
try {
    $Result = Get-SyncContexts -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-SyncContexts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieves a list of sync contexts that are defined by the order. | [optional] 

### Return type

[**SyncContext**](SyncContext.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyncInstance"></a>
# **Get-SyncInstance**
> SyncInstance Get-SyncInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get sync instance configuration by id

Retrieves the content of the sync instance document on a system using the sync instance Id. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | Request id.

# Get sync instance configuration by id
try {
    $Result = Get-SyncInstance -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SyncInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Request id. | 

### Return type

[**SyncInstance**](SyncInstance.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyncInstances"></a>
# **Get-SyncInstances**
> SyncInstance Get-SyncInstances<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get the sync instance

Get the sync instance configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieves a list of sync instances that are defined by the order. (optional)

# Get the sync instance
try {
    $Result = Get-SyncInstances -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-SyncInstances: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieves a list of sync instances that are defined by the order. | [optional] 

### Return type

[**SyncInstance**](SyncInstance.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyncMetrics"></a>
# **Get-SyncMetrics**
> SyncTelemetryInstance Get-SyncMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get the sync metrics

Get the sync metrics. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieves a list of sync metrics that are defined by the order. (optional)

# Get the sync metrics
try {
    $Result = Get-SyncMetrics -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-SyncMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieves a list of sync metrics that are defined by the order. | [optional] 

### Return type

[**SyncTelemetryInstance**](SyncTelemetryInstance.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-MarkHostAsDeleted"></a>
# **Invoke-MarkHostAsDeleted**
> MarkHostAsDeletedResponse Invoke-MarkHostAsDeleted<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostChangeStatus] <PSCustomObject><br>

Mark a host by ID as 'DELETED'

Update the status of a **Host** of type APP_HOST to ""DELETED"". Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The host ID.
$HostChangeStatus = Initialize-HostChangeStatus -Status "DELETED" # HostChangeStatus |  (optional)

# Mark a host by ID as 'DELETED'
try {
    $Result = Invoke-MarkHostAsDeleted -Id $Id -HostChangeStatus $HostChangeStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-MarkHostAsDeleted: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The host ID. | 
 **HostChangeStatus** | [**HostChangeStatus**](HostChangeStatus.md)|  | [optional] 

### Return type

[**MarkHostAsDeletedResponse**](MarkHostAsDeletedResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchConfiguration"></a>
# **Invoke-PatchConfiguration**
> void Invoke-PatchConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenericODataBatchRequestRestModel] <PSCustomObject><br>

Enable or disable the server sync destination

Update the PowerProtect Data Manager sync configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ODataRequestRestModelMapStringObjectBody = Initialize-ODataRequestRestModelMapStringObjectBody -Enabled $false -Id "MyId" -LoginId "MyLoginId" -Secret "MySecret"
$ODataRequestRestModelMapStringObject = Initialize-ODataRequestRestModelMapStringObject -Body $ODataRequestRestModelMapStringObjectBody -Id "MyId"

$GenericODataBatchRequestRestModel = Initialize-GenericODataBatchRequestRestModel -Requests $ODataRequestRestModelMapStringObject # GenericODataBatchRequestRestModel |  (optional)

# Enable or disable the server sync destination
try {
    $Result = Invoke-PatchConfiguration -GenericODataBatchRequestRestModel $GenericODataBatchRequestRestModel
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenericODataBatchRequestRestModel** | [**GenericODataBatchRequestRestModel**](GenericODataBatchRequestRestModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-Context"></a>
# **Send-Context**
> SyncContext Send-Context<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncContext] <PSCustomObject><br>

Update the sync context

Update the content of the sync context. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = Initialize-Id -Id "MyId"
$SyncContextError = Initialize-SyncContextError -Code "MISSING_ID" -Reason "MyReason"
$SyncTrigger = Initialize-SyncTrigger -CascadeToInput $false -Type "SCHEDULE" -Value "MyValue"
$SyncContext = Initialize-SyncContext -ActivityId "MyActivityId" -Assignee $Id -EndTime (Get-Date) -VarError $SyncContextError -Id "MyId" -Inputs @{ key_example =  } -Outputs @{ key_example =  } -Protocol "NOP" -ResilienceTry 0 -StartTime (Get-Date) -State "PENDING" -SubContexts $SyncContext -SyncInstanceId "MySyncInstanceId" -Trigger $SyncTrigger -TriggerTime (Get-Date) # SyncContext |  (optional)

# Update the sync context
try {
    $Result = Send-Context -SyncContext $SyncContext
} catch {
    Write-Host ("Exception occurred when calling Send-Context: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SyncContext** | [**SyncContext**](SyncContext.md)|  | [optional] 

### Return type

[**SyncContext**](SyncContext.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReplaceStorageUnit"></a>
# **Invoke-ReplaceStorageUnit**
> void Invoke-ReplaceStorageUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageUnitReplacement] <PSCustomObject><br>

Replace a storage unit from one PowerProtect Data Domain storage system to another

Replaces a storage unit from one PowerProtect Data Domain storage system to another. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$StorageUnitReplacement = Initialize-StorageUnitReplacement -NewDataTargetId "MyNewDataTargetId" -OldDataTargetId "MyOldDataTargetId" # StorageUnitReplacement |  (optional)

# Replace a storage unit from one PowerProtect Data Domain storage system to another
try {
    $Result = Invoke-ReplaceStorageUnit -StorageUnitReplacement $StorageUnitReplacement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceStorageUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageUnitReplacement** | [**StorageUnitReplacement**](StorageUnitReplacement.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReplcateDataDomain"></a>
# **Invoke-ReplcateDataDomain**
> void Invoke-ReplcateDataDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageSystemReplacement] <PSCustomObject><br>

Replace a PowerProtect Data Domain storage system

Replaces a PowerProtect Data Domain storage system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$NetworkInterfaceReplacement = Initialize-NetworkInterfaceReplacement -NewAddress "MyNewAddress" -OldAddress "MyOldAddress"
$StorageSystemReplacement = Initialize-StorageSystemReplacement -Address "MyAddress" -CredentialId "MyCredentialId" -EnableValidation $false -NetworkInterfaces $NetworkInterfaceReplacement -Port 0 -StorageSystemId "MyStorageSystemId" -UpdatePolicyPreferredNetworks $false -VaultRecovery $false # StorageSystemReplacement |  (optional)

# Replace a PowerProtect Data Domain storage system
try {
    $Result = Invoke-ReplcateDataDomain -StorageSystemReplacement $StorageSystemReplacement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplcateDataDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageSystemReplacement** | [**StorageSystemReplacement**](StorageSystemReplacement.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

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

<a id="Sync-Version"></a>
# **Sync-Version**
> PostSyncVersionResponse Sync-Version<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostSyncVersionRequest] <PSCustomObject><br>

Check for complying source and destination system versions and protocols before the sync process

Check for complying source and destination system versions and protocols before the sync process. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$SourcePpdmVersion = Initialize-SourcePpdmVersion -Build "MyBuild" -Major "MyMajor" -Minor "MyMinor" -Release "MyRelease" -Service "MyService" -Snapshot $false
$SystemId = Initialize-SystemId -Id "MyId"
$PostSyncVersionRequest = Initialize-PostSyncVersionRequest -SourcePpdmVersion $SourcePpdmVersion -SourceProtocolVersion "MySourceProtocolVersion" -SourceSystemId $SystemId # PostSyncVersionRequest |  (optional)

# Check for complying source and destination system versions and protocols before the sync process
try {
    $Result = Sync-Version -PostSyncVersionRequest $PostSyncVersionRequest
} catch {
    Write-Host ("Exception occurred when calling Sync-Version: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PostSyncVersionRequest** | [**PostSyncVersionRequest**](PostSyncVersionRequest.md)|  | [optional] 

### Return type

[**PostSyncVersionResponse**](PostSyncVersionResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TriggerSyncInstance"></a>
# **Invoke-TriggerSyncInstance**
> PostSyncInstanceResponse Invoke-TriggerSyncInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncInstance] <PSCustomObject><br>

Trigger metadata synchronization

Trigger metadata synchronization. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$SystemId = Initialize-SystemId -Id "MyId"
$SyncInstanceDirection = Initialize-SyncInstanceDirection -Dst $SystemId -Mode "ONE_WAY" -Src $SystemId

$SyncInstance = Initialize-SyncInstance -ActivityId "MyActivityId" -CutoffTime "MyCutoffTime" -Directions $SyncInstanceDirection -DryRun $false -Id "MyId" -Level "FULL" -Owner $SystemId -ResilienceScaned $false -Since "MySince" -Type "REPLICA" # SyncInstance |  (optional)

# Trigger metadata synchronization
try {
    $Result = Invoke-TriggerSyncInstance -SyncInstance $SyncInstance
} catch {
    Write-Host ("Exception occurred when calling Invoke-TriggerSyncInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SyncInstance** | [**SyncInstance**](SyncInstance.md)|  | [optional] 

### Return type

[**PostSyncInstanceResponse**](PostSyncInstanceResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DataDomainDdboostEncryptionSettings"></a>
# **Update-DataDomainDdboostEncryptionSettings**
> DataDomainEncryptionSettings Update-DataDomainDdboostEncryptionSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainEncryptionSettings] <PSCustomObject><br>

Update PowerProtect Data Domain system encryption setting

Updates PowerProtect Data Domain system encryption setting of the local PowerProtect Data Manager. The encryption settings will be updated on the local Integrated Storage system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataDomainBoostOptions = Initialize-DataDomainBoostOptions -GlobalAuthenticationMode "MyGlobalAuthenticationMode" -GlobalEncryptionStrength "MyGlobalEncryptionStrength"
$DataDomainReplicationOptions = Initialize-DataDomainReplicationOptions -AuthenticationMode "MyAuthenticationMode" -Encryption "MyEncryption"
$DataDomainEncryptionSettings = Initialize-DataDomainEncryptionSettings -DdboostOptions $DataDomainBoostOptions -Hostname "MyHostname" -ReplicationOptions $DataDomainReplicationOptions # DataDomainEncryptionSettings |  (optional)

# Update PowerProtect Data Domain system encryption setting
try {
    $Result = Update-DataDomainDdboostEncryptionSettings -DataDomainEncryptionSettings $DataDomainEncryptionSettings
} catch {
    Write-Host ("Exception occurred when calling Update-DataDomainDdboostEncryptionSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainEncryptionSettings** | [**DataDomainEncryptionSettings**](DataDomainEncryptionSettings.md)|  | [optional] 

### Return type

[**DataDomainEncryptionSettings**](DataDomainEncryptionSettings.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DataDomainMTree"></a>
# **Update-DataDomainMTree**
> DataDomainMTree Update-DataDomainMTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainMTree] <PSCustomObject><br>

Update a PowerProtect Data Domain system Mtree by ID

Update a PowerProtect Data Domain system Mtree by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID.
$Id = Initialize-Id -Id "MyId"
$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
"DISCOVERY"$DataDomainMTree = Initialize-DataDomainMTree -AppOptimizedCompression "MyAppOptimizedCompression" -Attributes @{ key_example = "MyInner" } -AvailableCapacityInBytes 0 -CreatedAt (Get-Date) -Credential $Id -Deletable $false -Discovered $false -HardCapacityQuotaLevel 0 -HardStreamQuotaLevel 0 -Id "MyId" -LastDiscoveryStatus "MyLastDiscoveryStatus" -LastUpdated (Get-Date) -Name "MyName" -NetworkInterfaces $NetworkInterfaceStorageUnit -ProtectionCreated $false -Purpose "GENERAL" -ReplicationSources "MyReplicationSources" -ReplicationTargets "MyReplicationTargets" -RetentionEnabledIndefinitely $false -RetentionLockMode "MyRetentionLockMode" -RetentionLockStatus "MyRetentionLockStatus" -RetentionMaximum 0 -RetentionMinimum 0 -Reusable $false -SecurityOfficerPassword "MySecurityOfficerPassword" -SecurityOfficerUsername "MySecurityOfficerUsername" -SoftCapacityQuotaLevel 0 -SoftStreamQuotaLevel 0 -StorageSystem $Id -SystemManaged $false -Tenant $Id -TotalCapacityInBytes 0 -Type "MyType" -UnsupportedFeatures 
$Id = Initialize-Id -Id "MyId"
$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
"DISCOVERY" -UpdatedAt (Get-Date) -Usage "DATA_MANAGER_VAULT" -UserTags "MyUserTags" -VaultDataTargetIds "MyVaultDataTargetIds" # DataDomainMTree |  (optional)

# Update a PowerProtect Data Domain system Mtree by ID
try {
    $Result = Update-DataDomainMTree -DataTargetId $DataTargetId -DataDomainMTree $DataDomainMTree
} catch {
    Write-Host ("Exception occurred when calling Update-DataDomainMTree: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID. | 
 **DataDomainMTree** | [**DataDomainMTree**](DataDomainMTree.md)|  | [optional] 

### Return type

[**DataDomainMTree**](DataDomainMTree.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DataDomainPolicyConfig"></a>
# **Update-DataDomainPolicyConfig**
> void Update-DataDomainPolicyConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainProtectionPolicy] <PSCustomObject><br>

Update PowerProtect Data Domain system for a protection policy

Updates PowerProtect Data Domain system for a protection policy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataMovementPolicy = Initialize-DataMovementPolicy -CloudUnitName "MyCloudUnitName" -DataDomainId "MyDataDomainId" -DataTargetId "MyDataTargetId" -MtreePath "MyMtreePath" -StorageArrayId "MyStorageArrayId" -StorageUnitName "MyStorageUnitName"
$DataDomainProtectionPolicyDataDomainMTree = Initialize-DataDomainProtectionPolicyDataDomainMTree -AppOptimizedCompression "MyAppOptimizedCompression" -HardCapacityQuotaLevel 0 -HardStreamQuotaLevel 0 -Name "MyName" -SoftCapacityQuotaLevel 0 -SoftStreamQuotaLevel 0 -Type "storageunit"
$RetentionLock = Initialize-RetentionLock -Enable $false -Mode "COMPLIANCE"
$DataDomainStorageUnitAttributes = Initialize-DataDomainStorageUnitAttributes -TargetCloudUnitName "MyTargetCloudUnitName" -TopLevelPath "MyTopLevelPath"
$DataDomainUserWithPassword = Initialize-DataDomainUserWithPassword -Name "MyName" -OldPassword "MyOldPassword" -Password "MyPassword" -Role "MyRole"
$DataDomainProtectionPolicy = Initialize-DataDomainProtectionPolicy -CredentialId "MyCredentialId" -DataMovementPolicy $DataMovementPolicy -DataTargetId "MyDataTargetId" -Mtree $DataDomainProtectionPolicyDataDomainMTree -ProtectionLifeCycleId "MyProtectionLifeCycleId" -ProtectionStageId "MyProtectionStageId" -RetentionLock $RetentionLock -StorageArrayId "MyStorageArrayId" -StorageUnitAttributes $DataDomainStorageUnitAttributes -User $DataDomainUserWithPassword -WorkflowTaskId "MyWorkflowTaskId" # DataDomainProtectionPolicy |  (optional)

# Update PowerProtect Data Domain system for a protection policy
try {
    $Result = Update-DataDomainPolicyConfig -DataDomainProtectionPolicy $DataDomainProtectionPolicy
} catch {
    Write-Host ("Exception occurred when calling Update-DataDomainPolicyConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainProtectionPolicy** | [**DataDomainProtectionPolicy**](DataDomainProtectionPolicy.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DataDomainStorageUnit"></a>
# **Update-DataDomainStorageUnit**
> DataDomainStorageUnit Update-DataDomainStorageUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTargetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainStorageUnit] <PSCustomObject><br>

Update a storage unit by data target ID

Updates the PowerProtect Data Domain storage unit information by data target ID such as retention lock (mode and status), credential, and quotas. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataTargetId = "MyDataTargetId" # String | Data target ID
$NetworkInterfaceStorageUnit = Initialize-NetworkInterfaceStorageUnit -IpAddress "MyIpAddress" -NetworkId "MyNetworkId" -NetworkName "MyNetworkName"
$RetentionLock = Initialize-RetentionLock -Enable $false -Mode "COMPLIANCE"
$StorageUnit = Initialize-StorageUnit -AppOptimizedCompression "MyAppOptimizedCompression" -CombinedStreamHardLimit 0 -CombinedStreamSoftLimit 0 -HardLimit 0 -Name "MyName" -NativeId "MyNativeId" -NativeUri "MyNativeUri" -SoftLimit 0 -TenantUnit "MyTenantUnit"
$DataDomainStorageUnit = Initialize-DataDomainStorageUnit -CredentialId "MyCredentialId" -DataAccessIp "MyDataAccessIp" -DataTargetId "MyDataTargetId" -NetworkInterfaces $NetworkInterfaceStorageUnit -RetentionLock $RetentionLock -StorageArrayId "MyStorageArrayId" -StorageUnit $StorageUnit # DataDomainStorageUnit | 

# Update a storage unit by data target ID
try {
    $Result = Update-DataDomainStorageUnit -DataTargetId $DataTargetId -DataDomainStorageUnit $DataDomainStorageUnit
} catch {
    Write-Host ("Exception occurred when calling Update-DataDomainStorageUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTargetId** | **String**| Data target ID | 
 **DataDomainStorageUnit** | [**DataDomainStorageUnit**](DataDomainStorageUnit.md)|  | 

### Return type

[**DataDomainStorageUnit**](DataDomainStorageUnit.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ReplCopy"></a>
# **Update-ReplCopy**
> String Update-ReplCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>

Patch MFR copy by ID

Patches a retention time of the MFR copy using a specific ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the protection copy set.
$Body = "MyBody" # String | 

# Patch MFR copy by ID
try {
    $Result = Update-ReplCopy -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-ReplCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the protection copy set. | 
 **Body** | **String**|  | 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-StorageSystem"></a>
# **Update-StorageSystem**
> StorageSystem Update-StorageSystem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageSystem] <PSCustomObject><br>

Update a storage system by ID

Updates storage system by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The storage system ID.
$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$StorageSystemEmbedded = Initialize-StorageSystemEmbedded -InventorySource $EmbeddedIdName -Location $EmbeddedIdName

$Capacity = Initialize-Capacity -CapacityStatus "GOOD" -CompressionFactor 0 -LicensedUtilization 0 -PercentUsed 0 -ReductionPercentage 0 -TotalLicensedSize 0 -TotalLogicalSize 0 -TotalLogicalUsed 0 -TotalPhysicalSize 0 -TotalPhysicalUsed 0 -Type "ACTIVE"
$PreferredInterface = Initialize-PreferredInterface -NetworkAddress "MyNetworkAddress" -NetworkLabel "MyNetworkLabel" -NetworkName "MyNetworkName" -Purposes "MANAGEMENT" -Readiness "READY" -Scope "PUBLIC" -Speed 0 -Tags "MyTags"
$StorageSystemDataDomain = Initialize-StorageSystemDataDomain -Capacities $Capacity -CapacityQuotasSupported $false -CloudEnabled $false -CloudTierLicensed $false -CompressionFactor 0 -DatacenterDescription "MyDatacenterDescription" -DatacenterName "MyDatacenterName" -DdboostLicensed $false -EncryptionLicensed $false -Model "MyModel" -PercentUsed 0 -PreferredInterfaces $PreferredInterface -PreferredNetworkSupported $false -ReplicationEncryptionEnabled $false -ReplicationLicensed $false -RetentionLockComplianceEnabled $false -RetentionLockComplianceLicensed $false -RetentionLockGovernanceLicensed $false -RetentionLockSupported $false -SerialNumber "MySerialNumber" -StreamQuotasSupported $false -TotalSize 0 -TotalUsed 0 -UserCredsId "MyUserCredsId" -VdiskEnabled $false -Version "MyVersion"

$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT"$NasApplianceNetworkInterface = Initialize-NasApplianceNetworkInterface -Addresses $NetworkInterfaceAddresses -Id "MyId" -LinkSpeed 0 -Mtu 0 -NetworkLabel "MyNetworkLabel" -Purposes 
$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT" -Readiness "READY" -ReadinessChangedAt (Get-Date) -SupportedBackupMechanisms "MySupportedBackupMechanisms" -Tags "MyTags" -VlanId 0

$StorageSystemNasAppliance = Initialize-StorageSystemNasAppliance -NetworkInterfaces $NasApplianceNetworkInterface

$StorageSystemPowerMax = Initialize-StorageSystemPowerMax -Model "MyModel"
$StorageSystemRecoverPoint = Initialize-StorageSystemRecoverPoint -ProtectedSpace 0 -SerialNumber "MySerialNumber" -TotalCapacityManaged 0 -Version "MyVersion"
$StorageSystemXio = Initialize-StorageSystemXio -SerialNumber "MySerialNumber" -TotalSize 0 -TotalUsed 0 -Version "MyVersion"
$StorageSystemDetails = Initialize-StorageSystemDetails -DataDomain $StorageSystemDataDomain -NasAppliance $StorageSystemNasAppliance -PowerMax $StorageSystemPowerMax -RecoverPoint $StorageSystemRecoverPoint -Xio $StorageSystemXio

$StorageSystemInventorySource = Initialize-StorageSystemInventorySource -Id "MyId" -Name "MyName" -Preferred $false -Type "APP_HOST"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
$StorageSystemOperatingSystem = Initialize-StorageSystemOperatingSystem -Name "MyName" -Version "MyVersion"
"GOVERNANCE""DISCOVERY"$StorageSystemVproxy = Initialize-StorageSystemVproxy -Id "MyId"
$StorageSystem = Initialize-StorageSystem -Embedded $StorageSystemEmbedded -CapacityUtilization 0 -CreatedAt (Get-Date) -DdLocationId "MyDdLocationId" -Description "MyDescription" -Details $StorageSystemDetails -Id "MyId" -InventorySourceRefs $StorageSystemInventorySource -LastDiscovered (Get-Date) -LastDiscoveryAt (Get-Date) -LastDiscoveryResult $DiscoveryResult -LastDiscoveryStatus "NEW" -LastDiscoveryTaskId "MyLastDiscoveryTaskId" -VarLocal $false -LocationId "MyLocationId" -Name "MyName" -OperatingSystem $StorageSystemOperatingSystem -ParentId "MyParentId" -Purpose "NAS_SHARE" -Readiness "READY" -ReplicationEncryptionMode "ENABLED" -RetentionLockModes 

$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$StorageSystemEmbedded = Initialize-StorageSystemEmbedded -InventorySource $EmbeddedIdName -Location $EmbeddedIdName

$Capacity = Initialize-Capacity -CapacityStatus "GOOD" -CompressionFactor 0 -LicensedUtilization 0 -PercentUsed 0 -ReductionPercentage 0 -TotalLicensedSize 0 -TotalLogicalSize 0 -TotalLogicalUsed 0 -TotalPhysicalSize 0 -TotalPhysicalUsed 0 -Type "ACTIVE"
$PreferredInterface = Initialize-PreferredInterface -NetworkAddress "MyNetworkAddress" -NetworkLabel "MyNetworkLabel" -NetworkName "MyNetworkName" -Purposes "MANAGEMENT" -Readiness "READY" -Scope "PUBLIC" -Speed 0 -Tags "MyTags"
$StorageSystemDataDomain = Initialize-StorageSystemDataDomain -Capacities $Capacity -CapacityQuotasSupported $false -CloudEnabled $false -CloudTierLicensed $false -CompressionFactor 0 -DatacenterDescription "MyDatacenterDescription" -DatacenterName "MyDatacenterName" -DdboostLicensed $false -EncryptionLicensed $false -Model "MyModel" -PercentUsed 0 -PreferredInterfaces $PreferredInterface -PreferredNetworkSupported $false -ReplicationEncryptionEnabled $false -ReplicationLicensed $false -RetentionLockComplianceEnabled $false -RetentionLockComplianceLicensed $false -RetentionLockGovernanceLicensed $false -RetentionLockSupported $false -SerialNumber "MySerialNumber" -StreamQuotasSupported $false -TotalSize 0 -TotalUsed 0 -UserCredsId "MyUserCredsId" -VdiskEnabled $false -Version "MyVersion"

$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT"$NasApplianceNetworkInterface = Initialize-NasApplianceNetworkInterface -Addresses $NetworkInterfaceAddresses -Id "MyId" -LinkSpeed 0 -Mtu 0 -NetworkLabel "MyNetworkLabel" -Purposes 
$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT" -Readiness "READY" -ReadinessChangedAt (Get-Date) -SupportedBackupMechanisms "MySupportedBackupMechanisms" -Tags "MyTags" -VlanId 0

$StorageSystemNasAppliance = Initialize-StorageSystemNasAppliance -NetworkInterfaces $NasApplianceNetworkInterface

$StorageSystemPowerMax = Initialize-StorageSystemPowerMax -Model "MyModel"
$StorageSystemRecoverPoint = Initialize-StorageSystemRecoverPoint -ProtectedSpace 0 -SerialNumber "MySerialNumber" -TotalCapacityManaged 0 -Version "MyVersion"
$StorageSystemXio = Initialize-StorageSystemXio -SerialNumber "MySerialNumber" -TotalSize 0 -TotalUsed 0 -Version "MyVersion"
$StorageSystemDetails = Initialize-StorageSystemDetails -DataDomain $StorageSystemDataDomain -NasAppliance $StorageSystemNasAppliance -PowerMax $StorageSystemPowerMax -RecoverPoint $StorageSystemRecoverPoint -Xio $StorageSystemXio

$StorageSystemInventorySource = Initialize-StorageSystemInventorySource -Id "MyId" -Name "MyName" -Preferred $false -Type "APP_HOST"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
$StorageSystemOperatingSystem = Initialize-StorageSystemOperatingSystem -Name "MyName" -Version "MyVersion"
"GOVERNANCE" -Type "DATA_DOMAIN_SYSTEM" -UnsupportedFeatures 

$EmbeddedIdName = Initialize-EmbeddedIdName -Id "MyId" -Name "MyName"
$StorageSystemEmbedded = Initialize-StorageSystemEmbedded -InventorySource $EmbeddedIdName -Location $EmbeddedIdName

$Capacity = Initialize-Capacity -CapacityStatus "GOOD" -CompressionFactor 0 -LicensedUtilization 0 -PercentUsed 0 -ReductionPercentage 0 -TotalLicensedSize 0 -TotalLogicalSize 0 -TotalLogicalUsed 0 -TotalPhysicalSize 0 -TotalPhysicalUsed 0 -Type "ACTIVE"
$PreferredInterface = Initialize-PreferredInterface -NetworkAddress "MyNetworkAddress" -NetworkLabel "MyNetworkLabel" -NetworkName "MyNetworkName" -Purposes "MANAGEMENT" -Readiness "READY" -Scope "PUBLIC" -Speed 0 -Tags "MyTags"
$StorageSystemDataDomain = Initialize-StorageSystemDataDomain -Capacities $Capacity -CapacityQuotasSupported $false -CloudEnabled $false -CloudTierLicensed $false -CompressionFactor 0 -DatacenterDescription "MyDatacenterDescription" -DatacenterName "MyDatacenterName" -DdboostLicensed $false -EncryptionLicensed $false -Model "MyModel" -PercentUsed 0 -PreferredInterfaces $PreferredInterface -PreferredNetworkSupported $false -ReplicationEncryptionEnabled $false -ReplicationLicensed $false -RetentionLockComplianceEnabled $false -RetentionLockComplianceLicensed $false -RetentionLockGovernanceLicensed $false -RetentionLockSupported $false -SerialNumber "MySerialNumber" -StreamQuotasSupported $false -TotalSize 0 -TotalUsed 0 -UserCredsId "MyUserCredsId" -VdiskEnabled $false -Version "MyVersion"

$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT"$NasApplianceNetworkInterface = Initialize-NasApplianceNetworkInterface -Addresses $NetworkInterfaceAddresses -Id "MyId" -LinkSpeed 0 -Mtu 0 -NetworkLabel "MyNetworkLabel" -Purposes 
$NetworkInterfaceAddresses = Initialize-NetworkInterfaceAddresses -Type "IPV4" -Value "MyValue"
"MANAGEMENT" -Readiness "READY" -ReadinessChangedAt (Get-Date) -SupportedBackupMechanisms "MySupportedBackupMechanisms" -Tags "MyTags" -VlanId 0

$StorageSystemNasAppliance = Initialize-StorageSystemNasAppliance -NetworkInterfaces $NasApplianceNetworkInterface

$StorageSystemPowerMax = Initialize-StorageSystemPowerMax -Model "MyModel"
$StorageSystemRecoverPoint = Initialize-StorageSystemRecoverPoint -ProtectedSpace 0 -SerialNumber "MySerialNumber" -TotalCapacityManaged 0 -Version "MyVersion"
$StorageSystemXio = Initialize-StorageSystemXio -SerialNumber "MySerialNumber" -TotalSize 0 -TotalUsed 0 -Version "MyVersion"
$StorageSystemDetails = Initialize-StorageSystemDetails -DataDomain $StorageSystemDataDomain -NasAppliance $StorageSystemNasAppliance -PowerMax $StorageSystemPowerMax -RecoverPoint $StorageSystemRecoverPoint -Xio $StorageSystemXio

$StorageSystemInventorySource = Initialize-StorageSystemInventorySource -Id "MyId" -Name "MyName" -Preferred $false -Type "APP_HOST"
$DiscoveryResult = Initialize-DiscoveryResult -VarError "MyVarError" -MessageID "MyMessageID" -Remediation "MyRemediation" -Status "OK" -Summaries "MySummaries"
$StorageSystemOperatingSystem = Initialize-StorageSystemOperatingSystem -Name "MyName" -Version "MyVersion"
"GOVERNANCE""DISCOVERY" -UpdatedAt (Get-Date) -VproxyRefs $StorageSystemVproxy # StorageSystem |  (optional)

# Update a storage system by ID
try {
    $Result = Update-StorageSystem -Id $Id -StorageSystem $StorageSystem
} catch {
    Write-Host ("Exception occurred when calling Update-StorageSystem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The storage system ID. | 
 **StorageSystem** | [**StorageSystem**](StorageSystem.md)|  | [optional] 

### Return type

[**StorageSystem**](StorageSystem.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-SyncContext"></a>
# **Update-SyncContext**
> SyncContext Update-SyncContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchSyncContext] <PSCustomObject><br>

Update content of the context

Sends the updates for the contents of the context to propagate from local to other systems. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$PatchContent = Initialize-PatchContent -VarFrom "MyVarFrom" -Op "MyOp" -Path "MyPath" -Value 
$PatchSyncContextSourceSystemId = Initialize-PatchSyncContextSourceSystemId -Id "MyId"
$PatchSyncContext = Initialize-PatchSyncContext -Content $PatchContent -RootContextId "MyRootContextId" -SourceSystemId $PatchSyncContextSourceSystemId # PatchSyncContext |  (optional)

# Update content of the context
try {
    $Result = Update-SyncContext -PatchSyncContext $PatchSyncContext
} catch {
    Write-Host ("Exception occurred when calling Update-SyncContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PatchSyncContext** | [**PatchSyncContext**](PatchSyncContext.md)|  | [optional] 

### Return type

[**SyncContext**](SyncContext.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-DataDomain"></a>
# **Confirm-DataDomain**
> DataDomainSystemValidationResponse Confirm-DataDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataDomainSystemValidationRequest] <PSCustomObject><br>

Validate PowerProtect Data Domain system version

Validates that the PowerProtect Data Domain system is a supported version. This API is deprecated, will be deleted in release 19.20. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DataDomainSystemValidationRequest = Initialize-DataDomainSystemValidationRequest -Hostname "MyHostname" -Password "MyPassword" -Port 0 -Username "MyUsername" # DataDomainSystemValidationRequest | 

# Validate PowerProtect Data Domain system version
try {
    $Result = Confirm-DataDomain -DataDomainSystemValidationRequest $DataDomainSystemValidationRequest
} catch {
    Write-Host ("Exception occurred when calling Confirm-DataDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataDomainSystemValidationRequest** | [**DataDomainSystemValidationRequest**](DataDomainSystemValidationRequest.md)|  | 

### Return type

[**DataDomainSystemValidationResponse**](DataDomainSystemValidationResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

