# CopyLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **System.DateTime** | The date when this copy log was created. | [optional] 
**Id** | **String** | The ID of this copy log. | [optional] 
**PartialCopy** | **Boolean** | Indicates whether this copy is a partial copy or not. | [optional] 
**PartialCopyDescription** | **String** | The descriptions for partial copy, if this is a partial copy. | [optional] 
**SizeBytes** | **Int64** | The used capacity in storage system of this copy in bytes. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyLog = Initialize-PpdmApiReferenceCopyLog  -Date null `
 -Id null `
 -PartialCopy null `
 -PartialCopyDescription null `
 -SizeBytes null
```

- Convert the resource to JSON
```powershell
$CopyLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

