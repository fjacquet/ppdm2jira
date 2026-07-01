# ResourceMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Flavor** | **String** | The following different flavors are supported for the ASSET resource type: - AVAMAR_ASSET - MICROSOFT_SQL_DATABASE - FILE_SYSTEM - GENERIC_APPLICATION_ASSET - HYPERV_VIRTUAL_MACHINE - NATIVEEDGE_VIRTUAL_MACHINE - NUTANIX_VIRTUAL_MACHINE - KUBERNETES - MICROSOFT_EXCHANGE_DATABASE - NAS_SHARE - ORACLE_DATABASE - SAP_HANA_DATABASE - VMWARE_VIRTUAL_MACHINE The following different flavors are supported for the ASSET_SOURCE resource type: - AVAMAR - CLOUD_DIRECTOR - CLOUD_SNAPSHOT_MANAGER - GENERICNASMANAGEMENTSERVER - HYPERV_CLUSTER - HYPERV_SERVER - KUBERNETES - NETAPP_MANAGEMENT_SERVER - NUTANIX_CLUSTER - POWERSTOREMANAGEMENTSERVER - POWERSCALEMANAGEMENTSERVER - PRISM_CENTRAL - UNITYMANAGEMENTSERVER - VCENTER - NATIVEEDGE_ORCHESTRATOR The following different flavors are supported for the ASSET_SOURCE_2 resource type: - FS - ORACLE - MSSQL - SAP_HANA_DATABASE_SYSTEM - STORAGEGROUP - MICROSOFT_EXCHANGE_DATABASE_SYSTEM The following different flavors are supported for the STORAGE_ARRAY resource type: - OBJECT_STORAGE_AWS - OBJECT_STORAGE_AZURE - OBJECT_STORAGE_ECS - OBJECT_STORAGE_GCP - DATADOMAINSYSTEM - DATADOMAINAPPLIANCEPOOL | [optional] 
**Groups** | [**ResourceMetricGroups[]**](ResourceMetricGroups.md) | The search result groups. | [optional] 
**ResourceType** | **String** | The type of resource that matched which must be one of the following: - ACCESS_CONTROL - ACTIVITY - ALERT - APP_AGENT - APP_AGENT_WHITELIST - ASSET - ASSET_SOURCE - ASSET_SOURCE_2 - AUDIT_LOG - MESSAGE_CATALOG - PROTECTION_POLICY - STORAGE_ARRAY | [optional] 
**TotalCount** | **Int64** | The total number of resources that matched for a particular resource type and flavor. | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceMetric = Initialize-PpdmApiReferenceResourceMetric  -Flavor null `
 -Groups null `
 -ResourceType null `
 -TotalCount null
```

- Convert the resource to JSON
```powershell
$ResourceMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

