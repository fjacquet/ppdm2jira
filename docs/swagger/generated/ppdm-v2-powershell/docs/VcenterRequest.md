# VcenterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionType** | **String** | Specify what is the connection type of this vCenter such as adhoc and discovery. | [optional] 
**Id** | **String** | The vCenter ID. This value is null when adding. | [optional] 
**IsHost** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Url** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VcenterRequest = Initialize-PpdmApiReferenceVcenterRequest  -ConnectionType null `
 -Id null `
 -IsHost null `
 -Name null `
 -Password null `
 -Port null `
 -Url null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$VcenterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

