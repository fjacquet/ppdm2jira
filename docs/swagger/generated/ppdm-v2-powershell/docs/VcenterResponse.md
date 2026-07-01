# VcenterResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionType** | **String** | Specify what is the connection type of this vCenter such as adhoc and discovery. | [optional] 
**CreatedAt** | **String** |  | [optional] 
**ExpiredAt** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastUsedAt** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Url** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 
**Uuid** | **String** | vCenter instant UUID | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VcenterResponse = Initialize-PpdmApiReferenceVcenterResponse  -ConnectionType null `
 -CreatedAt null `
 -ExpiredAt null `
 -Id null `
 -LastUsedAt null `
 -Name null `
 -Port null `
 -Url null `
 -UserName null `
 -Uuid null `
 -Version null
```

- Convert the resource to JSON
```powershell
$VcenterResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

