# Fields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Retain** | **Boolean** | If &#x60;true&#x60;, will try to retain original non-null issue field values on move. | [optional] [default to $true]
**Type** | **String** |  | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Fields = Initialize-JiraApiReferenceFields  -Retain null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$Fields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

