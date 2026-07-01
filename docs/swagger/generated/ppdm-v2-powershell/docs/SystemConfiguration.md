# SystemConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationUserPassword** | **String** | The password for the application user. | [optional] 
**AutoSupport** | **Boolean** |  | [optional] 
**ConfigType** | **String** | The configuration type of PowerProtect Data Manager. | [optional] 
**DeployedPlatform** | **String** | The platform on which PowerProtect Data Manager is deployed. | [optional] 
**Firewall** | [**Firewall**](Firewall.md) |  | [optional] 
**GettingStartedCompleted** | **Boolean** | Indicates whether the customer has completed the initial setup for PowerProtect Data Manager. | [optional] 
**Id** | **String** |  | [optional] 
**IntegratedStorageSecuritySetupCompleted** | **Boolean** | Indicates whether integrated storage security has been successfully set up. | [optional] 
**Lockbox** | [**Lockbox**](Lockbox.md) |  | [optional] 
**Networks** | [**SystemConfigurationNetwork[]**](SystemConfigurationNetwork.md) |  | [optional] 
**NodeId** | **String** | The Node ID associated with the PowerProtect Data Manager instance. | [optional] 
**NtpServers** | **String[]** | The list of NTP servers used by PowerProtect Data Manager for time synchronization. | [optional] 
**OsUsers** | [**OsUser[]**](OsUser.md) |  | [optional] 
**Psnt** | **String** | The abbreviation of Product Serial Number Tag. It is a special DDR system identifier used for customer service. | [optional] 
**TimeZone** | **String** | The timezone setting for the PowerProtect Data Manager operating system. | [optional] 
**TimeZoneUi** | **String** | The timezone setting for the PowerProtect Data Manager user interface. | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemConfiguration = Initialize-PpdmApiReferenceSystemConfiguration  -ApplicationUserPassword null `
 -AutoSupport null `
 -ConfigType null `
 -DeployedPlatform null `
 -Firewall null `
 -GettingStartedCompleted null `
 -Id null `
 -IntegratedStorageSecuritySetupCompleted null `
 -Lockbox null `
 -Networks null `
 -NodeId null `
 -NtpServers null `
 -OsUsers null `
 -Psnt null `
 -TimeZone null `
 -TimeZoneUi null
```

- Convert the resource to JSON
```powershell
$SystemConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

