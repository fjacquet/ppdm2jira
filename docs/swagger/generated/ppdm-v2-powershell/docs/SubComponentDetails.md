# SubComponentDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **System.Collections.Hashtable** | Attributes of the subcomponent. | [optional] 
**ComponentName** | **String** | Name of component. | [optional] 
**DateInstalled** | **System.DateTime** | Date upgrade installed. | [optional] 
**DisplayName** | **String** | Display name of component. | [optional] 
**ErrorMessage** | **String** | Error message if error occurs. | [optional] 
**FileName** | **String** | Name of subcomponent bin file. | [optional] 
**FromVersion** | **String** | The version before upgrade. | [optional] 
**MinimumVersion** | **String** | Minimum compatible version of this subcomponent that is supported by this upgrade package. | [optional] 
**Progress** | **Int32** | Subcomponent upgrade progress. | [optional] [default to 0]
**SkipUpgrade** | **Boolean** | Whether this subcomponent is skipped in software update. | [optional] [default to $false]
**Skippable** | **String** | The skippable state of subcomponent. | [optional] [default to "NOT_SUPPORTED"]
**SkippableDetails** | **String** | Detail information about system behavior if this component is skipped in software update. | [optional] [readonly] 
**StateChangedTime** | **System.DateTime** | sub component state changed time | [optional] 
**SubComponentUpgradeState** | **String** | The state of upgrade process in subcomponent. | [optional] 
**UpgradeError** | [**MessageDetails**](MessageDetails.md) |  | [optional] 
**UpgradeMode** | **String** | Upgrade mode of subcomponent. | [optional] 
**UpgradeStarted** | **System.DateTime** | Start time of the upgrade. | [optional] 
**UpgradeVersion** | **String** | Upgrade component version. | [optional] 

## Examples

- Prepare the resource
```powershell
$SubComponentDetails = Initialize-PpdmApiReferenceSubComponentDetails  -Attributes null `
 -ComponentName null `
 -DateInstalled null `
 -DisplayName null `
 -ErrorMessage null `
 -FileName null `
 -FromVersion null `
 -MinimumVersion null `
 -Progress null `
 -SkipUpgrade null `
 -Skippable null `
 -SkippableDetails null `
 -StateChangedTime null `
 -SubComponentUpgradeState null `
 -UpgradeError null `
 -UpgradeMode null `
 -UpgradeStarted null `
 -UpgradeVersion null
```

- Convert the resource to JSON
```powershell
$SubComponentDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

