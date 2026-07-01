# InventorySourceVCenter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetSource** | **Boolean** | Indicates whether the vCenter is an asset source. Valid values are the following: - True: The default value. - False: It indicates the vCenter is not an asset source. | [optional] 
**CloudType** | **String** | Indicates whether the vCenter is deployed in VMC. Valid values are the following: - VMC - NONE | [optional] 
**DisableAutoSoftwarePackagesManage** | **Boolean** | Determine whether the host configuration and upgrade process can automatically install the VIB on the ESXi hosts of this inventory source. Valid values are the following: - True: Disables automatic installation of the VIB on the ESXi hosts of this inventory source. - False: The default setting. | [optional] 
**DisableProxyAutoSoftwarePackagesManage** | **Boolean** | Indicates the property that determines whether to support manual or automatic upgrading of vProxies for this inventory source. Valid values are the following: - True: Disables automatic upgrade of vProxies of this inventory source. - False: The default setting. | [optional] 
**Hosting** | **Boolean** | Indicates whether the vCenter is hosting the current PowerProtect Data Manager system. Valid values are the following: - True (The vCenter is hosting the current PowerProtect Data Manager system.) - False (It defaults to false.) | [optional] 
**Internal** | **Boolean** | Identify whether the inventory source is an internal vCenter. Valid values are the following: - True (This is an internal vCenter.) - False (It defaults to false.) | [optional] 
**VSphereUiIntegration** | **Boolean** | Indicates whether to register a PowerProtect Data Manager vSphere extension, it is set to enabled by default, and should be presented to the user in the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceVCenter = Initialize-PpdmApiReferenceInventorySourceVCenter  -AssetSource null `
 -CloudType null `
 -DisableAutoSoftwarePackagesManage null `
 -DisableProxyAutoSoftwarePackagesManage null `
 -Hosting null `
 -Internal null `
 -VSphereUiIntegration null
```

- Convert the resource to JSON
```powershell
$InventorySourceVCenter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

