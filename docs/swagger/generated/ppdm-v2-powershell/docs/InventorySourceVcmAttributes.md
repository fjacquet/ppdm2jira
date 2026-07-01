# InventorySourceVcmAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DdboostUserCredsId** | **String** | The ID of Data Domain Boost user credential for VCM. | [optional] 
**External** | **Boolean** | Default value is false for VMware vCenter Configuration Manager (VCM). | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceVcmAttributes = Initialize-PpdmApiReferenceInventorySourceVcmAttributes  -DdboostUserCredsId null `
 -External null
```

- Convert the resource to JSON
```powershell
$InventorySourceVcmAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

