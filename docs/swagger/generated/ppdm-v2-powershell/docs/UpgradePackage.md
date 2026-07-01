# UpgradePackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Store activityId for hotfix install and revert. | [optional] 
**Category** | **String** | The category of upgrade package. | [optional] [default to "ACTIVE"]
**CertificateDetailsMap** | [**CertificateDetailsMap**](CertificateDetailsMap.md) |  | [optional] 
**CertificateTrustedByUser** | **Boolean** | Whether the certificate is trusted by user. | 
**Criticality** | **String** | package criticality | [optional] 
**DateInstalled** | **System.DateTime** | Upgrade package installed date. | [optional] 
**Description** | **String** | Detailed description of upgrade package. | [optional] 
**ErrorMessage** | **String** | Error message if error occurs. | [optional] 
**Eula** | [**UpgradePackageEula**](UpgradePackageEula.md) |  | [optional] 
**ExternalId** | **String** | Used to track external package id from system like CUP. | [optional] 
**FileName** | **String** | Name of the upgrade package. | [optional] 
**FromVersion** | **String** | Version before upgrade. | [optional] 
**Id** | **String** | Upgrade package ID. | 
**InitiationType** | **String** | upgrade initiation type | [optional] 
**LockboxPassphrase** | **String** | The passphrase of lockbox, which is needed when lockboxResetRequired is set to true. | [optional] 
**LockboxResetRequired** | **Boolean** | Whether it needs to reset lockbox. | [optional] 
**MadeAvailable** | **System.DateTime** | Available date of upgrade package. | [optional] 
**MaintenanceUpgrade** | **Boolean** | whether to keep in maintenance mode after upgrade. | [optional] 
**MinimumVersion** | **String** | Minimum appliance version supported by this upgrade package. | [optional] 
**Name** | **String** | Name of upgrade package. | [optional] 
**PackageDelivery** | **String** | indicates where the package comes from | [optional] 
**PackageVersion** | **String** | The version of upgrade package. | [optional] 
**PreUpgradeHealthCheck** | [**PreUpgradeHealthCheck**](PreUpgradeHealthCheck.md) |  | [optional] 
**RebootRequired** | **Boolean** | Whether a system restart is required. | [optional] 
**ReleaseNotesLink** | **String** | release notes link | [optional] 
**RevertSupported** | **Boolean** | Indicates whether hotfix supports revert or not. | [optional] 
**SizeInBytes** | **Int64** | Size of upgrade package in bytes. | [optional] 
**SkipSnapshot** | **Boolean** | whether to skip snapshot before upgrade. | [optional] 
**State** | **String** | State of upgrade package. | 
**StateChangedTime** | **System.DateTime** | Store state changed time. | [optional] 
**SubComponentDetails** | [**SubComponentDetails[]**](SubComponentDetails.md) | Detail information of sub-components. | [optional] 
**Type** | **String** | Type of upgrade package. | [optional] 
**UpgradeError** | [**MessageDetails**](MessageDetails.md) |  | [optional] 
**UpgradeMode** | **String** | Upgrade mode of this component. | [optional] 
**UpgradeStarted** | **System.DateTime** | Start time of upgrade. | [optional] 
**UpgradeToken** | **String** | Token to trigger upgrade. | [optional] 
**ValidationDetails** | [**ValidationDetail[]**](ValidationDetail.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpgradePackage = Initialize-PpdmApiReferenceUpgradePackage  -ActivityId null `
 -Category null `
 -CertificateDetailsMap null `
 -CertificateTrustedByUser null `
 -Criticality null `
 -DateInstalled null `
 -Description null `
 -ErrorMessage null `
 -Eula null `
 -ExternalId null `
 -FileName null `
 -FromVersion null `
 -Id null `
 -InitiationType null `
 -LockboxPassphrase null `
 -LockboxResetRequired null `
 -MadeAvailable null `
 -MaintenanceUpgrade null `
 -MinimumVersion null `
 -Name null `
 -PackageDelivery null `
 -PackageVersion null `
 -PreUpgradeHealthCheck null `
 -RebootRequired null `
 -ReleaseNotesLink null `
 -RevertSupported null `
 -SizeInBytes null `
 -SkipSnapshot null `
 -State null `
 -StateChangedTime null `
 -SubComponentDetails null `
 -Type null `
 -UpgradeError null `
 -UpgradeMode null `
 -UpgradeStarted null `
 -UpgradeToken null `
 -ValidationDetails null
```

- Convert the resource to JSON
```powershell
$UpgradePackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

