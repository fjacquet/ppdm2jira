# TargetK8sInfoPersistentVolumeClaims
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlternateStorageClass** | **String** | The alternate storage class to be used. | [optional] 
**Name** | **String** | The name of the persistent volume claim. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetK8sInfoPersistentVolumeClaims = Initialize-PpdmApiReferenceTargetK8sInfoPersistentVolumeClaims  -AlternateStorageClass null `
 -Name null
```

- Convert the resource to JSON
```powershell
$TargetK8sInfoPersistentVolumeClaims | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

