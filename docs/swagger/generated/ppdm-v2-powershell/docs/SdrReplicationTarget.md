# SdrReplicationTarget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** | Server disaster recovery Configuration Replication Data Domain Boost credential ID. | [optional] 
**DataTargetId** | **String** | Server disaster recovery Configuration replication data target ID. | [optional] 
**LastActivityId** | **String** | Server disaster recovery configuration activity ID for configuring remote repository. | [optional] 
**StorageSystemId** | **String** | Server disaster recovery configuration PowerProtect Data Domain storage system ID. | [optional] 
**Type** | **String** | Replication Target type. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrReplicationTarget = Initialize-PpdmApiReferenceSdrReplicationTarget  -CredentialId null `
 -DataTargetId null `
 -LastActivityId null `
 -StorageSystemId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SdrReplicationTarget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

