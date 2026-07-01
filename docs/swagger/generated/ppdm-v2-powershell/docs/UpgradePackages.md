# UpgradePackages
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**UpgradePackage[]**](UpgradePackage.md) | Upgrade package&#39;s detail content. | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpgradePackages = Initialize-PpdmApiReferenceUpgradePackages  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$UpgradePackages | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

