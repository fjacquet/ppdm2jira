# RestoredCopiesDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetAvamarInfo** | [**TargetAvamarInfo**](TargetAvamarInfo.md) |  | [optional] 
**TargetCloudInfo** | [**TargetCloudInfo**](TargetCloudInfo.md) |  | [optional] 
**TargetDatabaseInfo** | [**TargetDatabaseInfo**](TargetDatabaseInfo.md) |  | [optional] 
**TargetFileSystemInfo** | [**TargetFileSystemInfo**](TargetFileSystemInfo.md) |  | [optional] 
**TargetGenericAppInfo** | [**TargetGenericAppInfo**](TargetGenericAppInfo.md) |  | [optional] 
**TargetHypervVmInfo** | [**TargetHypervVmInfo**](TargetHypervVmInfo.md) |  | [optional] 
**TargetK8sInfo** | [**TargetK8sInfo**](TargetK8sInfo.md) |  | [optional] 
**TargetNasInfo** | [**TargetNasInfo**](TargetNasInfo.md) |  | [optional] 
**TargetNativeEdgeInfo** | [**TargetNativeEdgeInfo**](TargetNativeEdgeInfo.md) |  | [optional] 
**TargetNutanixInfo** | [**TargetNutanixInfo**](TargetNutanixInfo.md) |  | [optional] 
**TargetOracleDatabaseInfo** | [**TargetOracleDatabaseInfo**](TargetOracleDatabaseInfo.md) |  | [optional] 
**TargetSapHanaDatabaseInfo** | [**TargetSapHanaDatabaseInfo**](TargetSapHanaDatabaseInfo.md) |  | [optional] 
**TargetStorageInfo** | [**TargetStorageInfo**](TargetStorageInfo.md) |  | [optional] 
**TargetVmInfo** | [**TargetVmInfo**](TargetVmInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopiesDetails = Initialize-PpdmApiReferenceRestoredCopiesDetails  -TargetAvamarInfo null `
 -TargetCloudInfo null `
 -TargetDatabaseInfo null `
 -TargetFileSystemInfo null `
 -TargetGenericAppInfo null `
 -TargetHypervVmInfo null `
 -TargetK8sInfo null `
 -TargetNasInfo null `
 -TargetNativeEdgeInfo null `
 -TargetNutanixInfo null `
 -TargetOracleDatabaseInfo null `
 -TargetSapHanaDatabaseInfo null `
 -TargetStorageInfo null `
 -TargetVmInfo null
```

- Convert the resource to JSON
```powershell
$RestoredCopiesDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

