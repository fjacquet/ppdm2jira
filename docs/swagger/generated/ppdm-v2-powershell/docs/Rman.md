# Rman
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RmanCredsId** | **String** |  | [optional] 
**RmanTnsAlias** | **String** |  | [optional] 
**RmanTnsLocation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Rman = Initialize-PpdmApiReferenceRman  -RmanCredsId null `
 -RmanTnsAlias null `
 -RmanTnsLocation null
```

- Convert the resource to JSON
```powershell
$Rman | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

