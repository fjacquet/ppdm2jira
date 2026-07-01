# License
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivationDate** | **String** | The date when the license was activated in the system. | [optional] 
**DaysLeftForExpiry** | **Int32** | The number of days remaining before the license expires. | [optional] 
**Id** | **String** | The unique identifier for the license. | [optional] 
**Key** | **String** | The primary license key string. | [optional] 
**LicenseKeys** | [**LicenseKey[]**](LicenseKey.md) | An array of specific license keys and their details. | [optional] 
**Status** | **String** | The current status of the license (VALID or INVALID). | [optional] 
**Swid** | **String** | The software identifier associated with the license. | [optional] 
**Type** | **String** | The type of license (valid values are TRIAL, EMERGENCY, CAPACITY, SOCKET, or APPLIANCE). | [optional] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-PpdmApiReferenceLicense  -ActivationDate null `
 -DaysLeftForExpiry null `
 -Id null `
 -Key null `
 -LicenseKeys null `
 -Status null `
 -Swid null `
 -Type null
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

