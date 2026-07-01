# SdrConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Server disaster recovery configuration activity ID. | [optional] 
**BackupsEnabled** | **Boolean** | Server disaster recovery configuration backup enabled setting. | [optional] 
**CredentialId** | **String** | Server disaster recovery configuration Data Domain Boost credential ID (only for Data Domain Boost). | [optional] 
**CredentialPassword** | **String** | Server disaster recovery configuration credential password (only for Data Domain Boost when restoring disaster recovery backup). | [optional] 
**CredentialType** | **String** | Server disaster recovery configuration credential password type (PPDM or DDBOOST) (only for Data Domain Boost when restoring disaster recovery backup). | [optional] 
**CredentialUsername** | **String** | Server disaster recovery configuration Data Domain Boost credential username (only for Data Domain Boost when restoring disaster recovery backup). | [optional] 
**Id** | **String** | Server disaster recovery configuration ID. | [optional] 
**PrimaryDataTargetId** | **String** | The primary data target ID for server disaster recovery configuration. | [optional] [readonly] 
**ReplicationTargets** | [**SdrReplicationTarget[]**](SdrReplicationTarget.md) | Server disaster recovery configuration remote repository PowerProtect Data Domains for replication. | [optional] 
**RepositoryFilesystem** | **String** | Server disaster recovery configuration filesystem: NETWORK_FILE_SYSTEM or BOOST_FILE_SYSTEM | [optional] 
**RepositoryHost** | **String** | Server disaster recovery configuration host. | 
**RepositoryPath** | **String** | Server disaster recovery configuration path or Data Domain Boost storage unit name. | 
**RetentionLockEnabled** | **Boolean** | Server disaster recovery configuration retention lock enabled setting. | [optional] 
**Type** | **String** | Server disaster recovery configuration type - Integrated Storage or PowerProtect Data Domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrConfiguration = Initialize-PpdmApiReferenceSdrConfiguration  -ActivityId null `
 -BackupsEnabled null `
 -CredentialId null `
 -CredentialPassword null `
 -CredentialType null `
 -CredentialUsername null `
 -Id null `
 -PrimaryDataTargetId null `
 -ReplicationTargets null `
 -RepositoryFilesystem null `
 -RepositoryHost null `
 -RepositoryPath null `
 -RetentionLockEnabled null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SdrConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

