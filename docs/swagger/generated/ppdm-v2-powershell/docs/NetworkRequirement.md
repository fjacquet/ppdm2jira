# NetworkRequirement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Networks** | [**NetworkRequirementNetwork[]**](NetworkRequirementNetwork.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkRequirement = Initialize-PpdmApiReferenceNetworkRequirement  -Networks null
```

- Convert the resource to JSON
```powershell
$NetworkRequirement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

