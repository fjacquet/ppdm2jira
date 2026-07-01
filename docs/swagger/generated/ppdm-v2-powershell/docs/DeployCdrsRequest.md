# DeployCdrsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminPassword** | **String** |  | [optional] 
**CidrBlockIp** | **String** |  | [optional] 
**CloudTargetId** | **String** |  | [optional] 
**DeleteExisting** | **Boolean** |  | [optional] 
**Email** | **String** |  | [optional] 
**MonitorPassword** | **String** |  | [optional] 
**PrivateDeployment** | **Boolean** |  | [optional] [default to $false]
**SubnetId** | **String** |  | [optional] 
**VpcId** | **String** |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeployCdrsRequest = Initialize-PpdmApiReferenceDeployCdrsRequest  -AdminPassword null `
 -CidrBlockIp null `
 -CloudTargetId null `
 -DeleteExisting null `
 -Email null `
 -MonitorPassword null `
 -PrivateDeployment null `
 -SubnetId null `
 -VpcId null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$DeployCdrsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

