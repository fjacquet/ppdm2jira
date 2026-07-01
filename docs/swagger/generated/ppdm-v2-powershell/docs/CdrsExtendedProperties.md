# CdrsExtendedProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CdrsConnectivityState** | [**CdrsExtendedPropertiesCdrsConnectivityState**](CdrsExtendedPropertiesCdrsConnectivityState.md) |  | [optional] 
**Cidr** | **String** |  | [optional] 
**CloudTargetId** | **String** |  | [optional] 
**ConnectionIp** | **String** |  | [optional] 
**DeployState** | **String** | Represents the state of the deployment. Values include: IN_PROGRESS, COMPLETED, UNKNOWN | [optional] 
**DeployStatus** | **String** | Represents the status of the deployment. Values include: OK, FAILED, UNKNOWN | [optional] 
**DeploymentCompleted** | **Boolean** |  | [optional] 
**Email** | **String** |  | [optional] 
**PrivateNetwork** | **Boolean** |  | [optional] 
**PublicDns** | **String** |  | [optional] 
**Region** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrsExtendedProperties = Initialize-PpdmApiReferenceCdrsExtendedProperties  -CdrsConnectivityState null `
 -Cidr null `
 -CloudTargetId null `
 -ConnectionIp null `
 -DeployState null `
 -DeployStatus null `
 -DeploymentCompleted null `
 -Email null `
 -PrivateNetwork null `
 -PublicDns null `
 -Region null
```

- Convert the resource to JSON
```powershell
$CdrsExtendedProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

