# NetworkInterfaceReplacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewAddress** | **String** |  | [optional] 
**OldAddress** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceReplacement = Initialize-PpdmApiReferenceNetworkInterfaceReplacement  -NewAddress null `
 -OldAddress null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceReplacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

