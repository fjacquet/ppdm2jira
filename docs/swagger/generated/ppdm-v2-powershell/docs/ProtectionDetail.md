# ProtectionDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetHistoryId** | **String** | The asset associated with the protection. | [optional] 
**AssetId** | **String** |  | [optional] 
**BackupLevel** | **String** | To indicate the backup type, adhoc or scheduled. | [optional] 
**BytesTransferred** | **Decimal** | Transfer rate value. | [optional] 
**CompletionStatus** | **String** | The result status when the protection activity completed. | [optional] 
**CompletionTime** | **System.DateTime** | When the protection activity was completed. | [optional] 
**CopyId** | **String** | A unique copy ID. Only Data Domain copies are supported. | [optional] 
**CreatedAt** | **System.DateTime** | When this protection detail was created. | [optional] 
**DataTargetId** | **String** | The data target associated with the protection. | [optional] 
**VarError** | [**ProtectionDetailError**](ProtectionDetailError.md) |  | [optional] 
**Id** | **String** | The unique ID of this protection detail. | [optional] 
**InitiatedType** | **String** | To indicate the backup type, adhoc or scheduled. | [optional] 
**NextScheduledTime** | **System.DateTime** | The next scheduled time for protection details | [optional] 
**PlcId** | **String** | The protection policy that is associated with the protection. | [optional] 
**ProtectionPolicyId** | **String** | The protection policy that is associated with the protection. | [optional] 
**ReplicatedCopyId** | **String** | A unique replicated copy ID. | [optional] 
**ReplicatedDataTargetId** | **String** | The replicated data target associated with the protection. | [optional] 
**StageId** | **String** | The stage associated with the protection. | [optional] 
**StartTime** | **System.DateTime** | When the protection activity was started. | [optional] 
**TransferDuration** | **Decimal** | Transfer rate value. | [optional] 
**Type** | **String** | The type of protection activity that was performed. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionDetail = Initialize-PpdmApiReferenceProtectionDetail  -AssetHistoryId null `
 -AssetId null `
 -BackupLevel null `
 -BytesTransferred null `
 -CompletionStatus null `
 -CompletionTime null `
 -CopyId null `
 -CreatedAt null `
 -DataTargetId null `
 -VarError null `
 -Id null `
 -InitiatedType null `
 -NextScheduledTime null `
 -PlcId null `
 -ProtectionPolicyId null `
 -ReplicatedCopyId null `
 -ReplicatedDataTargetId null `
 -StageId null `
 -StartTime null `
 -TransferDuration null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProtectionDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

