# AppServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**AppServerAttributes**](AppServerAttributes.md) |  | [optional] 
**ClusterInfo** | [**ClusterInfo**](ClusterInfo.md) |  | [optional] 
**ClusterType** | **String** |  | [optional] 
**CreatedBy** | [**CreatedByTypeEnum**](CreatedByTypeEnum.md) |  | [optional] 
**CreatedTime** | **System.DateTime** |  | [optional] 
**DatabaseCount** | **Int32** |  | [optional] 
**Guid** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**InstallLocation** | **String** |  | [optional] 
**LastDiscovered** | **System.DateTime** |  | [optional] 
**LastDiscoveryStatus** | **String** |  | [optional] 
**LastTransactionId** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] 
**Name** | **String** |  | [optional] 
**ProtectionEngineFlow** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Subtype** | **String** |  | [optional] 
**SupportedProtectionProtocols** | **String[]** | An array of the type of PowerProtect Data Domain protection supported by the application server. Values are BOOSTFS and DDBOOST. DDBOOST is always included. | [optional] 
**TenantId** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**UserTags** | **String[]** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppServer = Initialize-PpdmApiReferenceAppServer  -Attributes null `
 -ClusterInfo null `
 -ClusterType null `
 -CreatedBy null `
 -CreatedTime null `
 -DatabaseCount null `
 -Guid null `
 -HostId null `
 -Id null `
 -InstallLocation null `
 -LastDiscovered null `
 -LastDiscoveryStatus null `
 -LastTransactionId null `
 -LastUpdated null `
 -Name null `
 -ProtectionEngineFlow null `
 -Status null `
 -Subtype null `
 -SupportedProtectionProtocols null `
 -TenantId null `
 -Type null `
 -UserTags null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AppServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

