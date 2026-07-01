# PriorityMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarIn** | **System.Collections.Hashtable** | The mapping of priorities for issues being migrated **into** this priority scheme. Key is the old priority ID, value is the new priority ID (must exist in this priority scheme).  E.g. The current priority scheme has priority ID &#x60;10001&#x60;. Issues with priority ID &#x60;10000&#x60; are being migrated into this priority scheme will need mapping to new priorities. The &#x60;in&#x60; mapping would be &#x60;{&quot;&quot;10000&quot;&quot;: 10001}&#x60;. | [optional] 
**Out** | **System.Collections.Hashtable** | The mapping of priorities for issues being migrated **out of** this priority scheme. Key is the old priority ID (must exist in this priority scheme), value is the new priority ID (must exist in the default priority scheme). Required for updating an existing priority scheme. Not used when creating a new priority scheme.  E.g. The current priority scheme has priority ID &#x60;10001&#x60;. Issues with priority ID &#x60;10001&#x60; are being migrated out of this priority scheme will need mapping to new priorities. The &#x60;out&#x60; mapping would be &#x60;{&quot;&quot;10001&quot;&quot;: 10000}&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$PriorityMapping = Initialize-JiraApiReferencePriorityMapping  -VarIn null `
 -Out null
```

- Convert the resource to JSON
```powershell
$PriorityMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

