# AttachmentMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Author** | [**User**](User.md) | Details of the user who attached the file. | [optional] [readonly] 
**Content** | **String** | The URL of the attachment. | [optional] [readonly] 
**Created** | **System.DateTime** | The datetime the attachment was created. | [optional] [readonly] 
**Filename** | **String** | The name of the attachment file. | [optional] [readonly] 
**Id** | **Int64** | The ID of the attachment. | [optional] [readonly] 
**MimeType** | **String** | The MIME type of the attachment. | [optional] [readonly] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Additional properties of the attachment. | [optional] [readonly] 
**Self** | **String** | The URL of the attachment metadata details. | [optional] [readonly] 
**Size** | **Int64** | The size of the attachment. | [optional] [readonly] 
**Thumbnail** | **String** | The URL of a thumbnail representing the attachment. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AttachmentMetadata = Initialize-JiraApiReferenceAttachmentMetadata  -Author null `
 -Content null `
 -Created null `
 -Filename null `
 -Id null `
 -MimeType null `
 -Properties null `
 -Self null `
 -Size null `
 -Thumbnail null
```

- Convert the resource to JSON
```powershell
$AttachmentMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

