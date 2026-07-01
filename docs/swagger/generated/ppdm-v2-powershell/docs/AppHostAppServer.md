# AppHostAppServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatabaseCount** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppHostAppServer = Initialize-PpdmApiReferenceAppHostAppServer  -DatabaseCount null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AppHostAppServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

