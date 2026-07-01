# InfrastructureNodeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppServer** | [**AppServer**](AppServer.md) |  | [optional] 
**Asset** | [**Asset**](Asset.md) |  | [optional] 
**VarHost** | [**ModelHost**](ModelHost.md) |  | [optional] 
**ProtectionGroup** | [**ProtectionGroup**](ProtectionGroup.md) |  | [optional] 
**StorageSystem** | [**StorageSystem**](StorageSystem.md) |  | [optional] 
**VmEntity** | [**VmwareEntity**](VmwareEntity.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InfrastructureNodeDetails = Initialize-PpdmApiReferenceInfrastructureNodeDetails  -AppServer null `
 -Asset null `
 -VarHost null `
 -ProtectionGroup null `
 -StorageSystem null `
 -VmEntity null
```

- Convert the resource to JSON
```powershell
$InfrastructureNodeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

