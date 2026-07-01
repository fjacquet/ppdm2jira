# FieldLayoutSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultFieldLayout** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Description** | **String** | The description of the field layout scheme | [optional] 
**ExplicitMappings** | [**System.Collections.Hashtable**](ProjectCreateResourceIdentifier.md) | There is a default configuration &quot;&quot;fieldlayout&quot;&quot; that is applied to all issue types using this scheme that don&#39;t have an explicit mapping users can create (or re-use existing) configurations for other issue types and map them to this scheme | [optional] 
**Name** | **String** | The name of the field layout scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldLayoutSchemePayload = Initialize-JiraApiReferenceFieldLayoutSchemePayload  -DefaultFieldLayout null `
 -Description This is a field layout scheme `
 -ExplicitMappings null `
 -Name My Field Layout Scheme `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$FieldLayoutSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

