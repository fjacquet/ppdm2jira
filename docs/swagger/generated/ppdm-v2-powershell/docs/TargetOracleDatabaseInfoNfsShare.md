# TargetOracleDatabaseInfoNfsShare
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the NFS share | [optional] 
**Version** | **String** | Indicates the NFS type version: NFS3, NFS4. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetOracleDatabaseInfoNfsShare = Initialize-PpdmApiReferenceTargetOracleDatabaseInfoNfsShare  -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$TargetOracleDatabaseInfoNfsShare | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

