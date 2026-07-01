# AssetGenericVm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disks** | [**AssetGenericVmDisk[]**](AssetGenericVmDisk.md) | List of disks that makes up the Virtual Machine asset. | [optional] 
**NetworkInterfaceDetails** | [**AnyType**](.md) |  | [optional] 
**VirtualTrustedPlatformModuleEnabled** | **Boolean** | Indicates whether the virtual trusted platform module is enabled. | [optional] 
**VmGuestTools** | [**VmGuestTools**](VmGuestTools.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetGenericVm = Initialize-PpdmApiReferenceAssetGenericVm  -Disks null `
 -NetworkInterfaceDetails null `
 -VirtualTrustedPlatformModuleEnabled null `
 -VmGuestTools null
```

- Convert the resource to JSON
```powershell
$AssetGenericVm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

