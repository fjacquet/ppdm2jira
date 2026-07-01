# PersistentVolumeClaims
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppConsistentType** | **String** | Type of Application Consistent Backup per PCS for PVC if present. | [optional] 
**DataMover** | **String** | The type of dataMover used (either for FCD or non FCD based backups) (Per PVC). The dataMover will help identify if the backup copy chosen for restore is a FCD backup. Expected values for dataMover as of today is &quot;&quot;VDDK&quot;&quot; or &quot;&quot;FSAGENT&quot;&quot;. &quot;&quot;VDDK&quot;&quot; as data mover indicates that PVC that was backed up is backed by a first class disk. | [optional] 
**Excluded** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Size** | **Decimal** |  | [optional] 
**StorageClass** | **String** | Storage Class of the PVC that was backed up. (Per PVC). storageClass can be used by UI to show the original storage class of the PVC and help choose another storage class in the alternate cluster. | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PersistentVolumeClaims = Initialize-PpdmApiReferencePersistentVolumeClaims  -AppConsistentType null `
 -DataMover null `
 -Excluded null `
 -Name null `
 -Size null `
 -StorageClass null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$PersistentVolumeClaims | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

