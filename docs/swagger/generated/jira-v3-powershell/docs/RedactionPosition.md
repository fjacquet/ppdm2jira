# RedactionPosition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdfPointer** | **String** | The ADF pointer indicating the position of the text to be redacted. This is only required when redacting from rich text(ADF) fields. For plain text fields, this field can be omitted. | [optional] 
**ExpectedText** | **String** | The text which will be redacted, encoded using SHA256 hash and Base64 digest | 
**VarFrom** | **Int32** | The start index(inclusive) for the redaction in specified content | 
**To** | **Int32** | The ending index(exclusive) for the redaction in specified content | 

## Examples

- Prepare the resource
```powershell
$RedactionPosition = Initialize-JiraApiReferenceRedactionPosition  -AdfPointer /content/0/content/0/text `
 -ExpectedText ODFiNjM3ZDhmY2QyYzZkYTYzNTllNjk2MzExM2ExMTcwZGU3OTVlNGI3MjViODRkMWUwYjRjZmQ5ZWM1OGNlOQ&#x3D;&#x3D; `
 -VarFrom 14 `
 -To 20
```

- Convert the resource to JSON
```powershell
$RedactionPosition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

