# VPEProxy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**VProxyConfig**](VProxyConfig.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | [**VProxyStatus**](VProxyStatus.md) |  | [optional] 
**Updatable** | **Boolean** | Update flag to indicate if proxy is eligible to update or not. | [optional] 
**UpdateStatus** | **String** | Indicates proxy status regarding update eligibility, values like INSTALLED, INPROGRESS. | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEProxy = Initialize-PpdmApiReferenceVPEProxy  -Config null `
 -Id null `
 -Status null `
 -Updatable null `
 -UpdateStatus null
```

- Convert the resource to JSON
```powershell
$VPEProxy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

