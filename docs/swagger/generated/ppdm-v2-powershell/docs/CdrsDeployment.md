# CdrsDeployment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminPassword** | **String** |  | 
**CidrBlockIp** | **String** |  | [optional] 
**CloudTargetId** | **String** |  | 
**DeleteExisting** | **Boolean** |  | [optional] 
**Email** | **String** |  | 
**MonitorPassword** | **String** |  | [optional] 
**PrivateDeployment** | **Boolean** |  | [optional] [default to $false]
**SubnetId** | **String** |  | [optional] 
**VpcId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrsDeployment = Initialize-PpdmApiReferenceCdrsDeployment  -AdminPassword null `
 -CidrBlockIp null `
 -CloudTargetId null `
 -DeleteExisting null `
 -Email null `
 -MonitorPassword null `
 -PrivateDeployment null `
 -SubnetId null `
 -VpcId null
```

- Convert the resource to JSON
```powershell
$CdrsDeployment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

